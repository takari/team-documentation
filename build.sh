#!/bin/bash

# fail if anything errors
set -e
# fail if a function call is missing an argument
set -u

echo "build - Starting PDF Generation -----------------------------------------------"
makepdfs en
echo "build - Finshed PDF Generation - see tdm-book.en.pdf --------------------------"

echo "build - Starting mobi Generation ----------------------------------------------"
export FORMAT=mobi
makeebooks en
echo "build - Finished mobi Generation - see tdm-book.en.mobi -----------------------"

echo "build - Starting epub Generation ----------------------------------------------"
export FORMAT=epub
makeebooks en
echo "build - Finished epub Generation - see tdm-book.en.epub -----------------------"

echo "build - Generating site - see site/_site or http://localhost:4000 -------------"
./makesite.sh
