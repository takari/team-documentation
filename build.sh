#!/bin/bash

# fail if anything errors
set -e
# fail if a function call is missing an argument
set -u

echo "Starting PDF Generation"
makepdfs en
echo "Finshed PDF Generation - see tdm-book.en.pdf"

echo "Starting mobi Generation"
export FORMAT=mobi
makeebooks en
echo "Finished mobi Generation - see tdm-book.en.mobi"

echo "Starting epub Generation"
export FORMAT=epub
makeebooks en
echo "Finished epub Generation - see tdm-book.en.epub"

./makesite.sh
echo "Finished site generation - run cd site;jekyll serve or see site/_site"
