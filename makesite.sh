#!/bin/bash

rm -rf site/ebook/*
rm -rf site/book/*
rm -rf site/translations/* 

cp -v tdm-book.en.epub site/ebook 
cp -v tdm-book.en.mobi site/ebook
cp -v tdm-book.en.pdf site/ebook
cp -Rv en site/translations/
cd site
rake
jekyll server