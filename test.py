from time import perf_counter, time

import requests


def count_requests():
    url = "http://192.168.5.226/"
    previus = 0
    counter = 0
    while 1:

        current_time: float = time()
        response = requests.get(url)
        milli_amp = response.text
        print(milli_amp)
        counter += 1
        # print(current_time - previus)
        if current_time - previus >= 1:
            previus = time()
            print(counter)
            counter = 0


count_requests()
