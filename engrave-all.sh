#! /bin/bash
echo "********************************************" 
echo "*  collects all */*.ly files in sumyfolders  *"
echo "*  converts to mp3 and renders the pdf     *"
echo "*  put all in the myfolder out               *" 
echo "********************************************" 
echo ""
echo "This will convert the following files: "
echo ""
ls -1 [^_]*/[^_]*.ly

sleep 3

export LANG=DE

mkdir _out
mkdir /tmp/midi

strindex() { 
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}

for path in $(ls [^_]*/[^_]*.ly)
do
    
    pos=$(strindex $path "/")
    export myfolder=${path:0:pos} 
    file=${path:pos+1} 
    pos=$(strindex $file ".")
    export rawfilename=${file:0:pos}
    
    
    # filenames
    lyfile=$myfolder/$rawfilename.ly
    lyformidi=$myfolder/$rawfilename.midigen.txt
    midifile=$myfolder/$rawfilename.midi
    wavfile=/tmp/midi/$rawfilename.wav
    mp3file=_out/$rawfilename.mp3
    pdfoutfile=_out/$rawfilename.pdf
    
    echo "...   $ly -- $wavfile -- $mp3file  -- $pdfoutfile" 
    sleep 2
    # conversion pdf
    lilypond -dno-point-and-click -ddelete-intermediate-files --pdf -o$myfolder/$rawfilename $lyfile
    cp $myfolder/$rawfilename.pdf $pdfoutfile
    
    # conversion midi with interpretation of the %MIDION% %MIDIOFF% directives
    grep -v "%MIDI-OFF%" $lyfile >$lyformidi
    sed -i 's/%MIDI-ON%//' $lyformidi
    lilypond -dno-point-and-click -ddelete-intermediate-files --pdf -o$myfolder/$rawfilename $lyformidi 

    # copy the good pdf back for convenience... ... 
    cp $pdfoutfile $myfolder/$rawfilename.pdf   

    # transformation to mp3
    timidity $midifile -OwM -o $wavfile
    lame -hb128 $wavfile $mp3file
    # cleanup
    rm $lyformidi


    echo "checking variant"
    # pdf with empty staff (if directive %WITHEMPTYSTAFF is used)
    if [[ "$(grep WITHEMPTYSTAFF $lyfile)" =~ '%WITHEMPTYSTAFF' ]]; 
     then  
        echo "*************** generating file with additional empty staff ***************** ";
        sleep 2
        export pathvariant=$myfolder/$rawfilename.variant_withemptystaff
        
        # remove the prohibiting directives
        cp $lyfile $pathvariant.txt
        sed -i 's/%WITHEMPTYSTAFF-ON%//' $pathvariant.txt 
        # generate...
        lilypond -dno-point-and-click -ddelete-intermediate-files --pdf -o$pathvariant $pathvariant.txt
        # move to output directory and cleanup
        mv $pathvariant.pdf _out/$rawfilename.withEmptyStaff.pdf
        rm $pathvariant.txt
        
    fi

done;
rm -rf /tmp/midi    

