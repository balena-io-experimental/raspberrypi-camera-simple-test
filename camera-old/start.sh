#!/usr/bin/env bash

if [[ "${BALENA_SERVICE_NAME}" == "camera-${PICTURE}" ]]; then
  TAKE_PICTURE=yes
else
  echo "Set PICTURE=${BALENA_SERVICE_NAME#camera-}" to take picture in this service.
fi

while : ; do
  if [ "${TAKE_PICTURE}" == "yes" ]; then
    FILENAME="test_$(date +"%Y%m%d_%H%M%S").jpg"
    echo "snapping a picture via raspistill -o /data/${FILENAME}"
    raspistill -o "/data/${FILENAME}"
  fi
  sleep 10
done
