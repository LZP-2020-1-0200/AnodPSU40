#include <Arduino.h>
#include <Adafruit_ADS1X15.h>
#include <ESP8266WiFi.h>
#include <ESPAsyncWebServer.h>
#include <ESPAsyncTCP.h>

#define RELAY_PIN 16
#define READY_PIN 2

AsyncWebServer server(80);
Adafruit_ADS1115 ads;

double milli_amperes = 0;
const float multiplier = 0.125F;

// #ifndef IRAM_ATTR
// #define IRAM_ATTR
// #endif

volatile bool new_data = false;
volatile unsigned long timestamp;
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
              while(!new_data);
              
              new_data = false;
              float milli_amperes = ((ads.getLastConversionResults() * multiplier) * 1.5007 - 2.2552) / 1000;
              // Serial.println(milli_amperes);
              // String return_value = String(((ads.getLastConversionResults() * multiplier) * 1.5007 - 2.2552) / 1000);

              request->send(200, "text/plain", String(milli_amperes)+","+ String(timestamp)); });

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

const unsigned int interval = 250;
unsigned long int previous_millis = 0;
int signal = LOW;
int counter = 0;

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

  // const unsigned long currentMillis = millis();

  // if (new_data)
  // {
  //   float result = ((ads.getLastConversionResults() * multiplier) * 1.5007 - 2.2552) / 1000;
  //   counter++;
  //   new_data = false;
  //   Serial.println(result);
  // }

  //

  // // int16_t results = ads.readADC_SingleEnded(3);
  // // milli_amperes = ((results * multiplier) * 1.5007 - 2.2552) / 1000;
  // // counter++;

  // if (currentMillis - previous_millis >= 1000)
  // {
  //   previous_millis = currentMillis;
  //   Serial.println(counter);
  //   counter = 0;
  //   // milli_amperes = results;
  // }

  // if (currentMillis - previous_millis >= interval)
  // {
  //   previous_millis = currentMillis;
  //   int16_t results = ads.readADC_SingleEnded(3);
  //   Serial.print(results * multiplier);
  //   Serial.println(" mV");
  //   ads.

  // signal = signal == LOW ? HIGH : LOW;
  // digitalWrite(RELAY_PIN, signal);

  // for (int i = 0; i < 20; i++)
  // {
  //   int16_t results = ads.readADC_SingleEnded(3);
  //   // Serial.print("Differential: ");
  //   // Serial.print(results);
  //   // Serial.print("(");
  //   Serial.print(results * multiplier);
  //   Serial.println(" mV");
  // }
  // int16_t results = ads.readADC_Differential_0_1();
}

// put your main code here, to run repeatedly:
// }