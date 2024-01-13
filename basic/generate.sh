#!/bin/bash

for word in $(<colours)
do
echo "\documentclass[dvipasnames]{standalone}" >basic$word.tex
echo "\usepackage{tikz}" >>basic$word.tex
echo "\definecolor{jacket}{HTML}{"$word"}" >>basic$word.tex
echo "\input{./preamble}">>basic$word.tex
echo "\begin{document}">>basic$word.tex
echo  "\begin{tikzpicture}">>basic$word.tex
echo  "      \begin{scope}">>basic$word.tex
echo  "          \basic{jacket}">>basic$word.tex
echo  "      \end{scope}">>basic$word.tex
echo  "  \end{tikzpicture}">>basic$word.tex
echo  "\end{document}">>basic$word.tex
pdflatex basic$word.tex
rm basic$word.tex
rm basic$word.log
rm basic$word.aux
done
    

