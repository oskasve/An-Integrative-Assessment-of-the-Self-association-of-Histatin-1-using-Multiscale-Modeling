grp=13
chains=3
tick=0
start=1
end=38

{echo del 0 - $grp

while [ $tick -le $chains ]
do
echo ri $start -  $end
start=$(($start + 38))
end=$(($end + 38))
((tick++))
done

echo q} | gmx make_ndx -f protein.gro -o chains.ndx

