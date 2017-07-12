#!/usr/bin/env bash

City=${1}
curl https://yandex.ru/pogoda/${City} -s | grep -o  "current-weather__thermometer_type_now\">.[0-9]*" | cut -d ">" -f 2