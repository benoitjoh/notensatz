\version "2.20.0"
font = \set fontSize = #-2

ref_text =  \lyricmode {
  Ahj4 ahj4. ahj8 a4 -- hj2 
    mo8 -- ru mo -- ru mo -- ru mo4 -- ru2 
    scia4 -- tu8 di lu me co4 -- ri,4. l'a8 -- mu -- ri mio4 si tu!2.
}

stanza_one = \lyricmode {
    \set stanza = "1. " 
    \align_syllables_left
    \font
    
    Cu4 ti4. lu8 dis4 -- si4.  ca8 t'aju4 a4. las8 -- sa4 ri2 meg4 -- ghiu4. la8 mor 4 -- "ti e"4. no8
    chi4 -- stu du -- lu -- ri2 
    
    \set stanza = "Ref."
    \font

    \ref_text
    \ref_text
} 


stanza_two = \lyricmode {   
    \set stanza = "2. "
    \align_syllables_left
}
stanza_three = \lyricmode {   
    \set stanza = "3. "
    \align_syllables_left
}
       
