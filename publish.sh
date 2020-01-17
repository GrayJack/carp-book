#!/bin/sh

mdbook build
mv book /tmp
git checkout gh-pages
mv /tmp/book/* ./
git add . && git commit -m "Update the book" && git push
git checkout master
