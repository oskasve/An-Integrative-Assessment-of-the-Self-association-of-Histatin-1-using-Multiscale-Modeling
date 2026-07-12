ref=0
while [ $ref -le 3 ] 
do 
mkdir Chain$ref
cd Chain$ref
sel=0

while [ $sel -le 3 ]
do
gmx pairdist -f ../../skip.xtc -s ../../protein_1.tpr -n ../../chains.ndx -ref $ref -sel $sel -o ${ref}_${sel}.xvg
((sel++)) 
done

cd ..
((ref++))
done

