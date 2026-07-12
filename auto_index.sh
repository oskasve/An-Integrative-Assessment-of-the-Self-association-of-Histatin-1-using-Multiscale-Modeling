grp=14
res=152
tik=0

{echo del 0 - $grp

while [ $tik -le $res ]
do
echo ri $tik 
((tik++))
done

echo q} | gmx make_ndx -f clusters.pdb -o res.ndx

