#!/bin/bash

echo "makesite starting"

echo "makesite - clean -----------------------------------------------------"
rm -rf site/ebook/*
rm -rf site/book/*
rm -rf site/translations/*
rm -rf site/figures/* 

echo "makesite - copy ------------------------------------------------------"
cp -v tdm-book.en.epub site/ebook 
cp -v tdm-book.en.mobi site/ebook
cp -v tdm-book.en.pdf site/ebook
cp -Rv en site/translations/
cp -Rv figures site/
cd site
echo "makesite - rake ------------------------------------------------------"
rake
echo "makesite - jekyll ----------------------------------------------------"
jekyll server