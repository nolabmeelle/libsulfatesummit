#!/usr/bin/env bash
set -e
LIB="frost-oxygen.a"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "https://github.com/nolabmeelle/libsulfatesummit/releases/download/crimson-forest-golden-harbor/frost-oxygen.a" -o "$LIB"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
