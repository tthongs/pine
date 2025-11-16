grep -E '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}' emails.txt > valid_emails.txt
grep -E -v '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}' emails.txt > invalid_emails.txt
echo -e '--Valid Emails-- \n'
cat valid_emails.txt
echo -e '\n'
echo -e '--Invalid Emails-- \n\n'
cat invalid_emails.txt
