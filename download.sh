#!/bin/bash

url=https://raw.githubusercontent.com/hauke96/LaTeX/master/

# colors
red="\033[0;31m"
green="\033[0;32m"
default="\033[0m"

download() {
    echo -n "download $1 $2"
    header=$(curl -s --head $url$1)
    valid=$(echo "$header" | grep "HTTP\/1\.1\s200\sOK")
    content=$(curl -s $url$1)
    if [ -z "$valid" ]
    then
        echo "$red FAILED : "$(echo "$header" | grep "HTTP/1\.1")""
    else
        printf "%s" "$content" > ./$1
        echo "$green finished"
    fi
    echo -n $default
}

echo "DOWNLOADING NEWEST PACKAGES..."

download dadp.sty "........"
download gail.sty "........"
download makrocol.sty "...."
download p4.sty ".........."
download uniscript.cls "..."

echo ""
echo "DONE"
echo "(does not mean that everything just worked fine :P )"
echo ""
echo "You can also use \"git clone https://github.com/hauke96/LaTeX.git\" to get get everything."
