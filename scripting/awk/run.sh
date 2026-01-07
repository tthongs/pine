echo $USER
date
ps --forest -f
if [[ -f f1 &&  -f var.awk ]] ; then
awk -f var.awk f1
fi
echo $PWD
exit
