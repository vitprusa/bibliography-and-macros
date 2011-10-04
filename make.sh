#!/bin/bash


project_name="vit-prusa"

function compile_project {

cp ${project_name}.bib  ${project_name}.bib.backup
bibtool -K -s ${project_name}.bib > ${project_name}.bib.sorted
mv ${project_name}.bib.sorted ${project_name}.bib
}

function archive_project {
rm *.zip
git archive -o ${project_name}-$(date +%Y-%m-%d-at-%H-%M-%S).zip HEAD
}

compile_project

project_name="bibliography-and-macros"
archive_project
