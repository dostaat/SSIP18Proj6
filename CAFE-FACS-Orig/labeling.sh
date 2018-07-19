#!/bin/bash
index=1;
for name in *.pgm
do    
    if [[ $name = *h*".pgm" ]]; then
        echo "1,0,0,0" >> labels.csv
        mv "${name}" "${index}.pgm"
        index=$((index+1))
    elif [[ $name = *a*".pgm" ]]; then 
        echo "0,0,0,1" >> labels.csv
        mv "${name}" "${index}.pgm"
        index=$((index+1))
    elif [[ $name = *n*".pgm" ]]; then 
        echo "0,0,1,0" >> labels.csv
        mv "${name}" "${index}.pgm"
        index=$((index+1))
    elif [[ $name = *m*".pgm" ]]; then 
        echo "0,1,0,0" >> labels.csv
        mv "${name}" "${index}.pgm"
        index=$((index+1))
    else 
        rm $name
    fi
    
done
