#!/bin/bash

if [ -n "$(git status --porcelain)" ]; then
  echo "Il y a des changements en cours, commitez les d'abord ou supprimez les";
else
  git remote add fork https://github.com/gbesset-formateur/2021-etu-iut-casir-git-tp4.git
  git pull fork fork/amend-bis
  git reset HEAD^
  git add src/index.html
  git commit -m 'Oh I miss the image'
fi
