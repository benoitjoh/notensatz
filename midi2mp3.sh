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

for path in $(ls -d1 */*.midi)
do
    pos=$(strindex $path "/")
    folder=${path:0:pos} 
    file=${path:pos+1} 
    pos=$(strindex $file ".")
    rawfile=${file:0:pos}
    wav=/tmp/midi/$rawfile.wav
    mp3=out/$rawfile.mp3
    pdfin=$folder/$rawfile.pdf
    pdfout=out/$rawfile.pdf
    echo "...   $path --> $wav --> $mp3" 


    timidity $path -OwM -o $wav
    lame -hb128 $wav $mp3
    gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$pdfout $pdfin
    
#echo "[$(tput setaf 2)ok$(tput sgr 0)] processed files:  $(ls out/* | wc -w)"
 
done;
rm -rf /tmp/midi    

