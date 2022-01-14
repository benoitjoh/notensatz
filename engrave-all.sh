#! /bin/bash
echo "********************************************" 
echo "*  collects all */*.ly files in sufolders  *"
echo "*  converts to mp3 and renders the pdf     *"
echo "*  put all in the folder out               *" 
echo "********************************************" 
echo ""
echo "This will convert the following files: "
echo ""
ls -1 [^_]*/[^_]*.ly

sleep 3

LANG=en

mkdir _out
mkdir /tmp/midi

strindex() { 
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}

for path in $(ls [^_]*/[^_]*.ly)
do
    
    pos=$(strindex $path "/")
    folder=${path:0:pos} 
    file=${path:pos+1} 
    pos=$(strindex $file ".")
    rawfile=${file:0:pos}
    
    
    # filenames
    ly=$folder/$rawfile.ly
    lyformidi=$folder/_$rawfile.midigen.txt
    midi=$folder/$rawfile.midi
    wav=/tmp/midi/$rawfile.wav
    mp3=_out/$rawfile.mp3
    pdfin=$folder/$rawfile.pdf
    pdfout=_out/$rawfile.pdf
    
    echo "...   $ly -- $wav -- $mp3  -- $pdfout" 
    
    # conversion pdf
    lilypond -dno-point-and-click -ddelete-intermediate-files --pdf -o$folder/$rawfile $ly
    cp $pdfin $pdfout
    
    # conversion midi with interpretation of the %MIDION% %MIDIOFF% directives
    grep -v "%MIDIOFF%" $ly >$lyformidi
    sed -i 's/%MIDION%//' $lyformidi
    lilypond -dno-point-and-click -ddelete-intermediate-files --pdf -o$folder/$rawfile $lyformidi 
    
    # transformation to mp3
    timidity $midi -OwM -o $wav
    lame -hb128 $wav $mp3
    rm $lyformidi

done;
rm -rf /tmp/midi    

