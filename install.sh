#!/bin/bash
path=/usr/share/texlive/texmf-dist/tex/generic/hauke96/
whoami="$(whoami)"

echo "DOWNLOADING NEWEST PACKAGES..."
echo ""
echo -n "CREATE  folder ...... "
sudo mkdir -p $path
echo "finished"
echo -n "INSTALL dadp ........ "
sudo cp dadp.sty $path
echo "finished"
echo -n "INSTALL gail ........ "
sudo cp gail.sty $path
echo "finished"
echo -n "INSTALL makrocol .... "
sudo cp makrocol.sty $path
echo "finished"
echo -n "UPDATE  lr-R file ... "
sudo texhash --quiet
echo "finished"
echo ""
echo "DONE"
echo "(does not mean that everything just worked fine :P )"
echo ""
echo "You can also use \"git clone https://github.com/hauke96/LaTeX.git\" to get get everything."
