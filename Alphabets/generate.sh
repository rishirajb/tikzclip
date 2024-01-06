#! /bin/bash
mkdir red
cp preamble.tex ./red
cd red
for x in {A..Z}
do
pwd    
echo "\documentclass[dvipasnames]{standalone}" >red$x.tex
echo "\usepackage{tikz}" >>red$x.tex
echo "\definecolor{myred}{RGB}{147,51,61}" >>red$x.tex
echo "\input{./preamble}">>red$x.tex
echo "\begin{document}">>red$x.tex
echo  "\begin{tikzpicture}">>red$x.tex
echo  "      \begin{scope}">>red$x.tex
echo  "          \national{myred}{\Huge{\bf" $x "}}">>red$x.tex
echo  "      \end{scope}">>red$x.tex
echo  "  \end{tikzpicture}">>red$x.tex
echo  "\end{document}">>red$x.tex
pdflatex red$x.tex
rm red$x.tex
rm red$x.log
rm red$x.aux
done
cd..
