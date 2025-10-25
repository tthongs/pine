14th September 2025
===================
Ubuntu : OS : install

UNIX/Linux/Ubuntu : command line based

Ubuntu:
	open terminal
	type in UNIX cmd 
			->output
	500+ cmds
	simple/complex

terminal: shell
bash

project


TCL
Python

YT channel
Books? (No)
Notes?
	Class, notes, README, Examples

JD: Job Discription

Foundries:
TSMC (Taiwan)
180nm
3nm

GF (Global foundries)

Samsung
Intel



user id : pine
machine:  pine


whoami
	prints user id (uid) currently logged in

hostname
	machine name
	host (machine)


windows:
	folder
UNIX:
	directory


RH7
CentOS7.0
Most upgraded OS:
RHEL8


Chip Design
	IC design
	IP 
		
	IT (team)
	machines
	RH7/RH8 : CPU/RAM
	50 Linux
	5000-10000


Ankur
	IT team: unix user id
	ankur

	50 UNIX

	VM

	fe-ankur
		rsh  alpha
		ssh  beta
		rlogin	gamma	

	Linux: powerful : CPU 12-24-64-128
			  RAM: 32GB / 800GB


	Chip design?

		Software (EDA companies)
		EDA: Electronic design automation 
		Cadence (Analog)
		Synopsys (Digital)
		Siemens (Mentor Graphics) (physical verification)
		Xilinx
		Ansys
		
	1)Tool install 
	2)License

	Asic
		Layout -> Cadence -> virtuoso (tool)
					install
					license

	Linux : use (GUI)

	command line

	RAM
		Linux


Linux
	multi user env
		u1
		u2
		u3
		and so on



Linux
	cmd line based




17 Sep 2025


C:\A\B


pwd:
	print working directory with absolute path
	/etc/bin
	directory: folder

path:

/ root path
/home/pine/dir1
/home/pine/dir2

ls: list cmd

UNIX cmd: cases sensitive (lower case)

Mkdir

mkdir : create new directory

mkdir dir1
mkdir d2
mkdir d3 d4 d5
clear -> clear the terminal

Dont use special character: * for dir/file name
* : astrick
* : star
* : wild card

rm: remove a file or dir
rm README.txt
(once removed is gone, there is a default backup)

rm -r d4
rm -r d1 d2 d3

rmdir d5


ctrl+L : clear 

cd: change directory


ls : list cmd

home directory in Linux?
=========================


cd <enter>
we change our current to home directory
i.e
/home/pine


Linux
	cmd
	binary
		/etc/bin/rm
	which rm
	built-in
		cd


editors:
	gvim
	gedit
	nedit
	nano

	open simple text file


& -> ampersand

process background
pid: process id

ls /home/pine
ls ..
ls ../..

* : wild card 


pdf:
	acroread
	evince
ls -F

ls -l 
	long list
	

21 Sept-ld 2025

ls
ls -F
ls -l
ls -d 
ls -l -d
ls -ld
ls -a
ls -A
ls -la
ls -lA


.  -> current dir
.. -> parent dir


bash/unix
	weak quote " "
	strong quote ' '

.bashrc (must be present in home directory of user)
bash: shell
rc: run command

run cmd of bash shell


~ (tilde)
~ -> /home/pine

/home/pine/.bashrc

~ : /home/pine

gedit ~/.bashrc &

# to comment in bash



mkdir -p D1
mkdir -p D1/D2


echo : to print

echo : it adds a new line character in the end
\n


alais cmd: list all possible alais definitions for you


shell:
	standard input
			-> shell-> kernel
					-> out

					stderr
					stdout

					shell
shell:cl
	bash
	csh
	tcsh
	zsh
	ksh

echo adds a \n in the end of text


user defined var
	bash
		v=100
		echo "$v"

system defined var
	environment variables
		echo "$SHELL"


env:
	cmd to print all environment var and its value


The value of $USER is pine

echo "The value of $USER is $USER"
The value of pine is pine
pine@pine:~/PINE/2026/UNIX_BASH$ echo "The value of \$USER is $USER"
The value of $USER is pine
pine@pine:~/PINE/2026/UNIX_BASH$ echo 'this is $USER'
this is $USER


PS1='\w'



mkdir

cp 
mv
rm

cp -r d1 d2


echo examples
	switch
quotes "" / ''	
cat

echo "helo" 

>
>>
 redirect operators

stdout
stderr




24th Sep 2025

Unix file structure


super user : root

/ :root dir
/home
/etc
/bin
/usr/bin


root


your accnt: pine

sudo install


do something as super user

/etc/sudu file
pine
	: root accnt


sudo 



 mv file /



permissions
	
-rw-rw-r-- 1 pine pine 0 Sep 24 21:52 file

- regular file

r: read access : can read file's content
w: write access : can change the content of file / delete / move
x: execute access

file owner:  	rw-  (pine)
group owner: 	rw-   (pine)
others:		r--	(others)



UNIX?
cmd line system

cmd options


ls -l
rm -r 

(manual)
man ls 
press q to exit


redirect operator
>  (write)
>> (append)

ls
->
stdout

ls file
->file
stdout


ls file_nofile


ls nofile
ls: cannot access 'nofile': No such file or directory

error

stderr

standard error

ls file nofile
ls: cannot access 'nofile': No such file or directory
file

echo -e "this is \t a tab"
echo "this is \t a normal text"


echo -n
	supress default \n



> re-direct operator
redirects stdout to a file

0 : stdin
1 : stdout
2 : stderr



ls file nofile &> f3
pine@pine:~/PINE/2026/UNIX_BASH$ cat f3
ls: cannot access 'nofile': No such file or directory
file
pine@pine:~/PINE/2026/UNIX_BASH$ ls file nofile 2> f3
file
pine@pine:~/PINE/2026/UNIX_BASH$ cat f3
ls: cannot access 'nofile': No such file or directory
pine@pine:~/PINE/2026/UNIX_BASH$ ls file nofile > f3 2> f4
pine@pine:~/PINE/2026/UNIX_BASH$ cat f3
file
pine@pine:~/PINE/2026/UNIX_BASH$ cat f4
ls: cannot access 'nofile': No such file or directory


stdin <

cat: concatinate cmd



echo $PATH
echo $USER
echo $PWD
echo $HOSTNAME

vi : shell based
vim: update of vi (shell)
gvim : graphical vim
	cmd mode (cmd mode) : cant type directly
	search a text / char
			
	insert mode
	cmd mode to insert mode

wc : word count
	->lines cnt
	-> word cnt
	-> char


word: seperated by WS

this is	pine : 12
char cnt: all char including white space
WS: space / tab / new line


wc:
	-l
	-w
	-m

wc -l

pipe: | (file type)


unix cmd -> stdout-> unix cmd


cat f | wc -l
ls -A | wc -l
	
binary			(octal)
r	w	x
0	0	0 	0 
0	0	1	1
0	1	0	2
0	1	1	3
1	0 	0	4
1	0	1	5
1	1	0	6
1	1	1	7

chmod u+x file
-rw-rw-r-- 1 pine pine   110 Sep 27 22:11 f1
chmod 000 f1

chmod 000 f1
pine@pine:~/PINE/2026/UNIX_BASH$ ls -l f1
---------- 1 pine pine 110 Sep 27 22:11 f1
pine@pine:~/PINE/2026/UNIX_BASH$ cat f1
cat: f1: Permission denied
pine@pine:~/PINE/2026/UNIX_BASH$ echo "HELLO" > f1
bash: f1: Permission denied
pine@pine:~/PINE/2026/UNIX_BASH$ cat > f1
bash: f1: Permission denied

UNIX:
	file: 	666-umask 
	dir:	777-umask
666
002
---
664 (file)

777
002
--- 
775 (dir)

chmod u+x file
./file

dir: execute : to be able to cd to that dir
dir: r : to be able to list files/dirs under main dir


perm can only be changed by file/dir owner
#


wc
pipe
permissions
softlinks
	ln file newfile (hard link)
	ln -s file newfile (soft link)

ctrl+d : EOF (signal)



gvim : details
sort
find
ls switch
#


gvim f1 &

cmd mode

switch to insert mode from cmd mode
i
a
o
shift+i
shift+a
shift+o

open file in gvim
press i/o go to insert mode
type
esc (switch back to CM from IM)
:q (quit without save)
:wq (quit with save)
:w (save without quit)

.swp

:w! (force save)

rf -rf
	(force option)

gvim f1 f2 &

:n to switch files
:N
:tab all (enable tab)

gvim -p f1 f2 &

:all
enable HS (horizontal split of window)


gvim -o f1 f2 &

enable HS 



gvim -O f1 f2 &


how to enable line numbers in gvim

open file
stay in cmd mode
:set nu (enter)

:set nonu (remove line numbers)

put in home dir:
.vimrc (startup file gvim/vim/vi)



UNIX cmds
=========
chmod / permissions
chown
wc
pipe
cat
usage of < , > , >> , << (here marker)

cut cmd

range:
	starting-end
		-c2-4
		-c -6
		-c4-


-c: cut the char/range of char

-d : using delimiter
-f : field

a,b,c
d,e
f


there is no def val of delimeter in cut
some cmds have def del as space 


echo "abc def" | cut -d' ' -f1
abc
echo "abc def" | cut -d' ' -f2
def


if you cannot achieve the desired o/p using cut cmd then awk cmd is the
solution



4th Oct 2025
============

gvim 

insert mode:
	backspace
	delete button


undo: u (in cmd mode)


we can also delete data in cmd mode

x: delete the char where cursor is present
4x
1x: same as x
2x ....

dw: word<space>
delete word (put cursor position at first char of the word)

hi there this is pine


<word>
<> word boundry


d$ 
$: end of line (without \n)

delete 

dd  : delete complete line with \n

3dd : delete 3 lines 

d0 : delete from cursor position till start of the line


d+shift-g (dG) : delete from current line till end of file

dgg : delete from current line till start of the file

gvim:
dd: line delete (cut)
paste: p cmd 

dd line cut : p line with \n

cut/paste

copy/paste

copy: yank (yanking)

d-> delete
y-> yank

yy: copy the line
p : paste the line
15p: paste the line 15 times

nyy: copy n number of lines from current line
p: paste those n number of lines

dot =>  .  key can access prev cmd


cat cut.csv 
a,b,c
d,e,f
i,l,k
pine@pine:~/PINE/2026/UNIX_BASH$ cut -d',' -f1,3 --output-delimiter=" " cut.csv      
a c
d f
i k
pine@pine:~/PINE/2026/UNIX_BASH$ cut -d',' -f1,3  cut.csv
a,c
d,f
i,k



pid
background job
foreground job
ps cmd


every unix cmd will have a unique process id (pid)

when the cmd is done, pid also gets deleted


jobs -l 
to list the background running jobs in current term


ps -f
list pid of jobs running in current terminal


sleep 2


exit cmd

exit status

	0 : sucessful 
	non-zero : 1 -255 (fail: stderr)



PWD:	D1/.f1
	D2/
	D3/.f1
	D4/.f1
	D5/

script?


-eq (interger equal)

10/10/2025

hjkl : traverse in gvim in cmd mode
3j
6k
r : replacement key
shift+r : allows multiple char replacement
cc: delete line + insert mode
cw: delete word + insert mode
$ : move to end of line
^ (cap/carrot) : start of line non-space char 
0	: start of line including space

search any char in same line:
press f in cmd mode
then press char: t (any)
press ; to go to next 
press , search backwards

shift+f (right to left)

w ; ;

w : word to word switch
W : ABC  to word switch 
5W : switch to 5th word
word char:
[a-zA-Z0-9_]

THIS      is a word
this       word helelo
Asd abc abc


b: jump  word backwards

} : Jump para to para
{ : move prev para


grep/egrep: unix cmd : we can find the text/char in a file without
openning it


head/tail
head


x=x+1
x=$x+1
x+=1
x=1

x=$((x+1))
let
expr


path


mv ./d1/d2/f* ..
mv ./d1/f* ./d2/
mv ~/f* ../d2/


f* > d2
f
f1
fa
fabc
cf

f content copy


cp f1 ./d2/

head -3 f1 > ./d2/f2


cat f1 > f2
cp f1 f2

cp ~/d1/f1 ~/d2/



15/10/2025
wc
head/tail
cat
tac

sort
tr


tr:
translate/delete characters


tr <option> set

* : wildcard
zero or more characters

ls f*
f  (* matching zero no char)
f12345 (* match 5 char )



ls f*


grep : get regular expression pattern
egrep: extended grep (advance regular expr)





f
f1
fa
f1233






tr:

translate / delete


tr <opt> S1 S2 file

tr 'a' 'A' <<< "string"
tr 'a' 'A' file





variable substitution
cmd substitution


VS:
a=10
echo $a

CS
file=$(mktemp)
echo $file



tr : truncate

tr -t

character set (regular expr)
[:upper:] == [A-Z] == AorBorCDEF..orZ
[:lower:] == [a-z] == aorb or ...z

[a-Z] : a or b ..z or A or B...Z
[acde] : a or c or d or e
[12acb] : 1 or 2 or a or c or b
[12a-d_] : 1 or 2 or a or b or c or d or _

[:space:] : white space (space tab and \n)

tr ' ' '\0' <<< "hi there"
hithere
\0 is null character


-s 
sqeeze


tr -s

sqeeze repeated char


18 th Oct 2025

tr -c
tr -d 

echo $PATH | tr ':' '\n'


[:digit:]  === '0-9'
[:alpha:]
[:alnum:]
[:space:] : WS (space, tab and NL)


sort
----
.bashrc
export LC_ALL="C"

sort according to the ascii value
0
1
2
null
space
a
z
A
Z

sort
	ascii values
ascii table
ascii value: 0 is for null character

-n : numeric sort
-f : ignore case


space: default delimiter

sort
sort --debug  -k2,2 -k1,1 f1


uniq  (works on consecutive duplicate lines)
sort -u



-s switch ?


ls -lh | sort -h -r -k5



grep/regular expr




-
