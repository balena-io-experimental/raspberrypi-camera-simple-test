#!/usr/bin/env bash

SHORTNAME="${BALENA_SERVICE_NAME#camera-}"
if [[ "${SHORTNAME}" == "${PICTURE}" ]]; then
  TAKE_PICTURE=yes
else
  echo "Set PICTURE=${SHORTNAME}" to take picture in this service.
fi

while : ; do
  if [ "${TAKE_PICTURE}" == "yes" ]; then
    FILENAME="test_${SHORTNAME}_$(date +"%Y%m%d_%H%M%S").jpg"
    echo "snapping a picture via raspistill -o /data/${FILENAME}"
    raspistill -o "/data/${FILENAME}"
  fi
  sleep 10
done
