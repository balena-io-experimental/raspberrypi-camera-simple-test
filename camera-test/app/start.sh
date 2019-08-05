#!/usr/bin/env bash

while [[ true ]]; do
  raspistill -o /data/test.jpg
  sleep 10
done
