#!/bin/bash

cp -v tdm-book.en.epub site/ebook 
cp -v tdm-book.en.mobi site/ebook
cp -v tdm-book.en.pdf site/ebook
cp -R en site/translations/en
cd site
rake