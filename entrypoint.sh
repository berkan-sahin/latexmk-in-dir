#!/bin/sh

if [ -n "$LATEX_DIR" ]; then
	cd $LATEX_DIR
fi

if [ -r latexmkrc ]; then
	eval "latexmk -pdf"
else
	echo "No latexmkrc at specified location!"
	exit 1
fi
