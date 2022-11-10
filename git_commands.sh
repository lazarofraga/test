#!/bin/bash

git_init () {
    git config --global user.name "Lazaro Fraga"
    git config --global user.email "48263933+lazarofraga@users.noreply.github.com"
    echo "# ${PROJECT_NAME}" >> README.md
    git init
    git add README.md
    git commit -m "first commit"
    git branch -M main
    git remote add origin https://github.com/"${GITHUB_USERNAME}"/"${PROJECT_NAME}".git
    git push -u origin main
}

precommit () {
    pre-commit autoupdate
    pre-commit install
}