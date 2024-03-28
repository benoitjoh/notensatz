# notensatz

this is a collection of klezmer music used by our band Huljet. 

in _snippets there are a few examples, 

folder _common contains makros that are used in all pieces

# engrave.sh #

this shellscript can be used to build pdf and mp3 files for each .ly file

the results are delivered in folder _out

for each *.ly a pdf is generated. (the midi directive should be not set)

Files *.midigen.ly are converted to a mp3. A eventually generated pdf is skiped

Try out: 
````commandline
me@computer:~$ git clone https://github.com/benoitjoh/notensatz.git
me@computer:~$ cd notensatz
me@computer:~/notensatz$ ./engrave.sh .
````
