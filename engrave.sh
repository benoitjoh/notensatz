#! /bin/bash
echo "********************************************" 
echo "*  collects all */*.ly files in subfolders  *"
echo "*  converts to mp3 and renders the pdf      *"
echo "*  put all results in _out                  *" 
echo "*********************************************" 
echo ""

if [ -z $1];
then
  searchpath=[^_]*/;
else
  if [ -d $1 ];
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

echo "This will process the following files: "
echo ""

ls -1 $searchpath[^_]*.ly

sleep 3

export LANG=DE

mkdir _out

strindex() { 
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}

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
    
    echo "...   $ly -- $wavfile -- $mp3file  -- $pdfoutfile" 
    sleep 2
    # conversion pdf
    lilypond -dno-point-and-click -ddelete-intermediate-files --pdf -o$myfolder/$rawfilename $lyfile

    if [ -f $pdffile ]; 
    then 
      if [[ ! $lyfile =~ '.midigen.' ]]; # dont use pdf if the file is just for midigeneration... 
      then
        echo " [ok] pdf file found. "; 
        cp $pdffile $pdfoutfile; 
      fi;
    fi;

    if [ -f $midifile ]; 
    then echo " [ok] midi file found. "; 
      # transformation to mp3
      timidity $midifile -OwM -o $wavfile
      lame -hb128 $wavfile $mp3file
      # cleanup
      rm $wavfile
    fi;
     
    for clenupextension in pdf midi
    do
      for mypath in $(ls $myfolder/*.$clenupextension 2> /dev/null);
        do
        if [ -e $mypath ];
          then 
            echo " --- cleanup:  $mypath";
            rm $mypath;
        fi;
      done;
    done;
    

done;

echo "... done. "
