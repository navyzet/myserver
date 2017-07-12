#!/usr/bin/env bash

Miner=${1}
Parametr=${2}
case "${Parametr}" in
    "hashRate")
    curl https://ethermine.org/api/miner_new/${Miner} -s | grep -o -e 'hashRate\":\"[0-9]*\.[0-9] ' | cut -d '"' -f 3
    ;;
    "ethPerHour")
    curl https://ethermine.org/api/miner_new/${Miner} -s | grep -o -e 'ethPerMin\":[0-9\.]*' | cut -d ":" -f 2 | xargs -n 1 -i  echo "{}*60" | bc | awk '{printf "%f", $0}'
    ;;
esac