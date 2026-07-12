grp=13
chains=4
res1=1
res2=38
tik=0

{echo del 0 - $grp

while [ $tik -le $chains ]
do
echo ri $res1 - $res2
((res1 += 38))
((res2 += 38)) 
((tik++))
done

echo q} | gmx make_ndx -f protein.gro -o chains.ndx

