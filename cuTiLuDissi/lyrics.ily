\version "2.20.0"
font = \set fontSize = #-2

ref_text_a =  \lyricmode {
    Ahj4 ahj4. ahj8 a4 -- hj2 
    mo8 -- ru mo -- ru mo -- ru mo4 -- ru2 
    scia4 -- tu8 di lu me co4 -- ri,4. l'a8 -- mu -- ri mio4 si tu!2.
}

ref_text_b =  \lyricmode {
    Pa4 -- ci4. fa8 -- ce4 -- mu2 o4 ni8 -- ca -- red -- da mi4 -- a2 
    scia4 -- tu8 di lu me co4 -- ri,4. l'a8 -- mu -- ri mio4 si tu!2.
}

lala =  \lyricmode {
    La8 la la la la la la2. la4 la la la2. la8 la la la la la la2.  la8 la la la la la la2. 
    La8 la la la la la la2. la4 la la la2. la8 la la la la la la2. la8 la la la la la la2.  

}

stanza_one = \lyricmode {
    \set stanza = "1. " 
    \align_syllables_left
    \font
    
    Cu4 ti4. lu8 dis4 -- si4.  ca8 t'aju4 a4. las8 -- sa4 ri2 meg4 -- ghiu4. la8 mor 4 -- "ti e"4. no8
    chi4 -- stu du -- lu -- ri2 
    
    \set stanza = "Ref."
    \ref_text_a
    \ref_text_a
    \lala
} 


stanza_two = \lyricmode {   
    \set stanza = "2. "
    \align_syllables_left
    \font
     Cu4 ti4. lu8 dis4 -- si4.  a8 ti4 -- a4. ni8 -- cuz4 -- za,4. lu8 co4 -- ri4. mi8 scric4 -- chia4. a8 
     pic8 -- "ca a" pic4 --"ca a" pic -- ca2
    \set fontSize = #-6   
    \ref_text_a
    \ref_text_a
   
    
}
stanza_three = \lyricmode {   
    \set stanza = "3. "
    \align_syllables_left
     \font
   Lu4 pri4. -- "mu a"8 -- mu4 -- ri4. lu8 fi4 -- ci4. cu8 ti4 -a2 e4 tu4. schi8 -- fiu4 -- sa4. ti8
    sta8 scur -- dan4 -- "nu a"4 mi -- a2
    
    \set fontSize = #-6   
    \ref_text_a
    \font
    \ref_text_b
}
       
