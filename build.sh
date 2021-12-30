#!/usr/bin/env bash

FULL_IMAGE_NAME="ctezlifrn/install_ifrn"

if [ $# -eq 0 ]; then
  LAST_TAG="$(git tag | tail -1 )"
  echo ''
  echo 'NAME '
  echo '       build.sh'
  echo 'SYNOPSIS'
  echo '       ./build.sh <release_number>'
  echo 'DESCRIPTION'
  echo "       Build $FULL_IMAGE_NAME image locally."
  echo 'OPTIONS'
  echo '       <moodle_version> Moodle version'
  echo 'EXAMPLES'
  echo '       o   Build a image to local usage only:'
  echo "                  ./build.sh 3.11.4.1"
  echo "LAST TAG: $LAST_TAG"
  exit
fi

RELEASE=$1

docker image rm -f $FULL_IMAGE_NAME:$RELEASE
docker build . -t $FULL_IMAGE_NAME:$RELEASE
