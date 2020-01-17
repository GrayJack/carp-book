#!/bin/sh

mdbook build
rm book/highlight.js
cp highlight.js book/highlight.js
mv book /tmp
git checkout gh-pages
mv /tmp/book/* .
git add . && git commit -m "Update the book" && git push
git checkout master
rm -rf /tmp/book
