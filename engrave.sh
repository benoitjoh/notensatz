#! /bin/bash
echo "********************************************" 
echo "*  collects all */*.ly files in subfolders  *"
echo "*  converts to mp3 and renders the pdf      *"
echo "*  put all results in _out                  *" 
echo "*********************************************" 
echo ""

export lilypond=/usr/bin/lilypond

# colors for console output
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0` # No Color
export err="[${red} ERR ${reset}]"
export inf="[${green} INF ${reset}]"
export wrn="[${yellow} WRN ${reset}]"


echo -e "${yellow}   using lilypond from: ${lilypond}\n   Version $(lilypond -v | grep LilyPond)"

# helper function
strindex() { 
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}

# check for installed components
if [[ ! -x $(which lilypond) ]]
then
  echo -e "${err} lilypond processor ist not installed. \nplease install from https://lilypond.org/unix.html" 
  exit -1
fi;
if [[ ! -x $(which timidity) ]]
then
  echo -e "${err} timidity processor ist not installed. \nplease install with:\nsudo apt install timidity" 
  exit -1
fi;
if [[ ! -x $(which lame) ]]
then
  echo -e "${err} lame media encoder ist not installed. \nplease install with:\nsudo apt install lame" 
  exit -1
fi;

# interpret commandline
if [[ -z $1 ]];
then
  searchpath=[^_]*/;
else
  if [[ -d $1 ]];
  then 
    if [[ $1 =~ "/" ]];
    then
      searchpath=$1;
    else
      searchpath=$1/ 
    fi;
  else
    searchpath=$1[^_]*/;
  fi;
fi;

# start
echo -e "${inf} This will process the following files: "
ls -1 $searchpath[^_]*.ly
if [[ ! $? -eq 0 ]]
then
  echo "${err} No processable *.ly files in subfolders found." 
  exit -1
fi;

sleep 3

export LANG=DE

if [ ! -d _out ]
then
  mkdir _out
else
  rm _out/xxxxx*
fi;



for path in $(ls $searchpath[^_]*.ly)
do
    
    pos=$(strindex $path "/")
    export myfolder=${path:0:pos} 
    file=${path:pos+1} 
    pos=$(strindex $file ".")
    export rawfilename=${file:0:pos}
    
    
    # filenames
    lyfile=$path

    pdffile=$myfolder/$rawfilename.pdf
    midifile=$myfolder/$rawfilename.midi
    wavfile=$myfolder/$rawfilename.wav
    mp3file=_out/$rawfilename.mp3
    pdfoutfile=_out/$rawfilename.pdf
    
    echo -e "\n${inf} ***** processing: ${lyfile} ******\n" 
    sleep 1
    # conversion pdf
    $lilypond -dno-point-and-click -ddelete-intermediate-files --pdf -o$myfolder/$rawfilename $lyfile
    if [[ ! $? -eq 0 ]]
    then
      echo "${err} Error during processing in lilypond! See messages above. Fix and run script again." 
      exit -1
      
      #echo "Press key to continue"
      #read dummy
    fi;

    if [ -f $pdffile ]; 
    then 
      if [[ ! $lyfile =~ '.midigen.' ]]; # dont use pdf if the file is just for midigeneration... 
      then
        echo "${inf} pdf file found. --> copying it to _out "; 
        sleep 1
        cp $pdffile $pdfoutfile; 
      fi;
    fi;

    if [ -f $midifile ]; 
    then 
      echo "${inf} midi file found. --> converting to mp3 "; 
      sleep 1
      # transformation to mp3
      timidity $midifile -OwM -o $wavfile
      lame -hb128 $wavfile $mp3file
      # cleanup
      rm $wavfile
    fi;
     
    for clenupextension in pdf midi ly~ ily~
    do
      for mypath in $(ls $myfolder/*.$clenupextension 2> /dev/null);
        do
        if [ -e $mypath ];
          then 
            echo "${inf} --- cleanup:  $mypath";
            rm $mypath;
        fi;
      done;
    done;
    

done;

echo "${inf} finished."
