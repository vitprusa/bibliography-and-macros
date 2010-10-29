#!/bin/bash

cp vit-prusa.bib  vit-prusa.bib.backup
bibtool -K -s vit-prusa.bib > vit-prusa.bib.sorted
mv vit-prusa.bib.sorted vit-prusa.bib 
