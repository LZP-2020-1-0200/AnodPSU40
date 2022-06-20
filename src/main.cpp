#include <Arduino.h>
#include <Adafruit_ADS1X15.h>
#include <ESP8266WiFi.h>
#include <ESPAsyncWebServer.h>
#include <ESPAsyncTCP.h>
#include <ArduinoJson.h>

#define RELAY_PIN 16
#define READY_PIN 2

AsyncWebServer server(80);
Adafruit_ADS1115 ads;
DynamicJsonDocument doc(4096);
DynamicJsonDocument doc2(4096);

const float multiplier = 0.125F;
const float slope = 1.5007;
const float intercept = -2.2552;

volatile bool new_data = false;
volatile unsigned long timestamp;

unsigned int counter = 0;

void IRAM_ATTR NewDataReadyISR()
{
  new_data = true;
  timestamp = millis();
}

bool initialize_wifi()
{
  const char *ssid = "NanoLab";
  const char *password = "Mikro2015";
  uint8_t counter = 0;
  delay(1000);
  Serial.print("\n\nConnecting to WiFi");
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED)
  {
    delay(1000);
    Serial.print(".");
    counter++;

    if (counter >= 20)
    {
      return 0;
    }
  }
  Serial.println("\nConnected successfully!");
  Serial.print("Local IP address: ");
  Serial.println(WiFi.localIP());
  return 1;
}

void initialize_server()
{
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request)
            {
              AsyncResponseStream *response = request->beginResponseStream("application/json");
              serializeJson(doc2, *response);
              doc2.clear();
              doc2.garbageCollect();
              request->send(response); }

  );

  server.on("/off", HTTP_GET, [](AsyncWebServerRequest *request)
            {
                  digitalWrite(RELAY_PIN, LOW);
                  request->send(200, "text/plain", "Stopped"); });

  server.on("/on", HTTP_GET, [](AsyncWebServerRequest *request)
            {
                  digitalWrite(RELAY_PIN, HIGH);
                  request->send(200, "text/plain", "Started"); });

  server.begin();
}

void setup()
{
  Serial.begin(74880);
  pinMode(RELAY_PIN, OUTPUT);
  pinMode(READY_PIN, INPUT);

  digitalWrite(RELAY_PIN, HIGH);

  initialize_wifi();
  initialize_server();

  if (!ads.begin())
  {
    Serial.println("Failed to initialize ADS.");
    while (1)
      ;
  }

  ads.setGain(GAIN_TWOTHIRDS);

  attachInterrupt(digitalPinToInterrupt(READY_PIN), NewDataReadyISR, FALLING);
  ads.startADCReading(MUX_BY_CHANNEL[3], /*continuous=*/true);
}

void loop()
{

  if (new_data)
  {
    float volts = ads.getLastConversionResults() * multiplier;
    float amperes = volts * slope + intercept;
    float milli_amperes = amperes / 1000;

    JsonArray data = doc[String(counter)].createNestedArray("data");
    data.add(timestamp);
    data.add(milli_amperes);

    new_data = false;
    counter++;
  }

  if (counter == 30)
  {
    counter = 0;
    doc2 = doc;
    doc.clear();
    doc.garbageCollect();
  }
}
