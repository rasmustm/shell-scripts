#!/bin/bash

# Takes all latex files in directory and converts them to
# PDFs which are stored in the "output/" directory

if [ ! -f "output" ]
then
  mkdir "output"
fi

xelatex -shell-escape -output-directory=output *.tex
