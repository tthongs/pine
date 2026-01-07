BEGIN{
FS=","
OFS="\t"
}
{
#print NR,NF
print $1,$NF,NR
}
END{
}
