#!/bin/bash

pick1=37
pick2=38
lim=75
 
mkdir Res$pick1
cd Res$pick1

while [ $pick2 -le $lim ]; do
gmx pairdist -f ../../cut.xtc -s ../../protein.tpr -n ../../res.ndx -ref $pick1 -sel $pick2 -o ${pick1}_${pick2}.xvg
((pick2++))
done

