import json
from time import perf_counter, sleep, time

import requests
from requests import get


def count_requests():
    url = "http://192.168.5.226/"
    previus = 0
    counter = 0
    while 1:
        current_time: float = time()
        response = requests.get(url)
        milli_amp = response.json()
        if not milli_amp:
            continue
        print(milli_amp, end="\n\n")
        counter += 1
        if current_time - previus >= 1:
            previus = time()
            print(counter)
            counter = 0


def parse():
    reference_time = 0
    ip_address_ = "http://192.168.5.226/"

    while True:
        response = get(ip_address_)

        if response.status_code != 200:
            continue

        response_json: dict[str, dict] = response.json()

        if not response_json:
            sleep(0.05)
            continue

        for key in response_json:
            timestamp, milli_amperes = response_json[key]["data"]

            if reference_time == 0 and power_on.value:
                reference_time = timestamp

            if reference_time:
                time_and_measurement_dict[timestamp - reference_time] = milli_amperes

        display_value = round(milli_amperes, 2)
        print(display_value)
        # if not power_on.value:
        #     continue

        if reference_time == 0:
            reference_time = timestamps_list[0]

        # if not power_on.value:
        #     continue

        # if reference_time == 0:
        #     reference_time = timestamp

        # time_and_measurement_dict[timestamp - reference_time] = milliamps


# count_requests()
parse()
