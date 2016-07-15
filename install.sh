#!/bin/bash
path=/usr/share/texlive/texmf-dist/tex/generic/hauke96/
whoami="$(whoami)"

if [ "$whoami" != "root" ]; then
    echo "This script must be executed as root!"
    exit 1
fi

echo "DOWNLOADING NEWEST PACKAGES..."
echo ""
echo -n "CREATE $path..."
sudo mkdir -p $path
echo "finished"
echo -n "INSTALL dadp..."
sudo cp dadp.sty $path
echo "finished"
echo -n "INSTALL gail..."
sudo cp gail.sty $path
echo "finished"
echo -n "INSTALL makrocol..."
sudo cp makrocol.sty $path
echo "finished"
echo -n "UPDATE the lr-R file..."
sudo texhash --quiet
echo "finished"
echo ""
echo "DONE"
echo "(does not mean that everything just worked fine :P )"
echo ""
echo "You can also use \"git clone https://github.com/hauke96/LaTeX.git\" to get get everything.\n\n"
