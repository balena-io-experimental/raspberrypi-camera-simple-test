#!/usr/bin/env bash

while [[ true ]]; do
  echo "snapping a picture via raspistill -o /data/test.jpg"
  raspistill -o /data/test.jpg
  sleep 10
done
