#!/bin/bash

tempDir="$RANDOM"

if [ ! -f "$tempDir/" ]
then
  mkdir $tempDir
fi

cp output/*.pdf $tempDir/
cp -r source $tempDir/
zip -r upload.zip $tempDir/
rm -r $tempDir
