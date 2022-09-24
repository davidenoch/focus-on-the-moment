#!/bin/zsh
if [ "$#" -eq 1 ]; then
    name=$1
    cd
    mkdir $name
    cd $name
    git init 
    mkdir Scripts Data Images Ipynb MD SQL
    cp ~/Scripts/* Scripts
    mv Scripts/startup_template.ipynb $name.ipynb
    echo $name >readme.md
    cd
fi
if [ "$#" -ne 1 ]; then 
    echo "bro you forgot to name your project bro"
fi
