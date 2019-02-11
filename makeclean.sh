#!/bin/bash
echo "======== start ========="

## declare an array variable to hold file types
## filetype="something"
## You can access array elements using echo "${arr[0]}", "${arr[1]}" also
declare -a filetypes=("log" "aux" "bbl" "blg" "aux" "fdb_latexmk" "fls" "glsdefs" "lof" "lot" "out" "toc" "gz" "synctex.gz")

## now loop through the above array
for filetype in "${filetypes[@]}"
do
    echo "Deleting files with type: $filetype"
    find . -name "*.$filetype" -exec rm -vf {} \;
done
 
echo "======= finished ======="
