#! /bin/bash
echo "collects all */*.midi files in sufolders"
echo "converts to mp3"
echo "put the mp3 in folder out"
sleep 2

mkdir out
mkdir /tmp/midi

strindex() { 
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}

for path in $(ls -d1 */*.ly)
do
    pos=$(strindex $path "/")
    folder=${path:0:pos} 
    file=${path:pos+1} 
    pos=$(strindex $file ".")
    rawfile=${file:0:pos}
    ly=$folder/$rawfile.ly
    wav=/tmp/midi/$rawfile.wav
    mp3=out/$rawfile.mp3
    pdfin=$folder/$rawfile.pdf
    pdfout=out/$rawfile.pdf
    echo "...   $ly -- $wav -- $mp3  -- $pdfout" 

    lilypond -dno-point-and-click -ddelete-intermediate-files --pdf -o$folder/$rawfile $ly

    cp $pdfin $pdfout
    timidity $path -OwM -o $wav
    lame -hb128 $wav $mp3
    
#echo "[$(tput setaf 2)ok$(tput sgr 0)] processed files:  $(ls out/* | wc -w)"
 
done;
rm -rf /tmp/midi    

