#!/bin/bash

tempDir="$1"

if [ ! -f "$tempDir" ]
then
  mkdir $tempDir
fi

if [ -f "attachments" ]
then
	echo "hello"
	cp attachments/* $tempDir/
fi

cp attachments/* $tempDir/

cp output/*.pdf $tempDir/
cp -r source $tempDir/
zip -r upload.zip $tempDir/
rm -r $tempDir
