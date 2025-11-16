echo -e "start with # :-----\n"
grep '^#' lines.txt
echo -e "\n"

echo -e "end with DOT :-------\n"
grep '\.$' lines.txt
echo -e "\n"

echo -e "start with number or end with alphabet :-----\n"
grep '^[0-9]|[A-Za-z]$' lines.txt
echo -e "\n"

echo -e "start with three spaces or end with DOT :-------\n"
grep '^ {3}|\. $' lines.txt
echo -e "\n"

echo -e "start with non_alphanum :--------\n"
grep '^[^a-zA-Z0-9]' lines.txt
echo -e "\n"

echo -e "end with atleast two numbers :-------\n"
grep '[0-9]{2,}$' lines.txt
echo -e "\n"

echo -e "start with no space or tab :-------\n"
grep '^[^ \t]' lines.txt
echo -e "\n"

echo -e "lines that end with space or tab :-------\n"
grep '[ \t]$' lines.txt
echo -e "\n"

echo -e "lines that have only one number :-------\n"
grep '^[^0-9]*[0-9][^0-9]*$' lines.txt
echo -e "\n"

echo -e "lines that have only two alphabets :------\n"
grep '^[A-Za-z]{2}$' lines.txt
echo -e "\n"
