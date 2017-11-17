#!/bin/bash

if [ ! -f "output" ]
then
  mkdir "output"
fi

xelatex -shell-escape -output-directory=output *.tex
