#!/usr/bin/env bash

for i in $(seq 1 5000)
do
  curl --location --silent --write-out '{
    "time_total_seconds": %{time_total},
    "time_namelookup_seconds": %{time_namelookup},
    "time_connect_seconds": %{time_connect},
    "content_type": "%{content_type}",
    "http_code": %{http_code},
    "speed_download": %{speed_download},
    "url": "%{url_effective}"
  }' -o /dev/null https://api.honeycomb.io/ |
  curl --silent --include --data @- \
  --header "X-Honeycomb-Team: $WRITEKEY" \
  "https://api.honeycomb.io/1/events/$(whoami)-first-dataset" |
  grep HTTP
done
