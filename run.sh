#!/usr/bin/env bash


fvm flutter clean && fvm flutter packages pub get && fvm flutter run -d web-server --web-hostname 127.0.0.1 --web-port 5000
