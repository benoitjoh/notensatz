% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"


\include "../_common/makros.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\header {
  title = \markup \caps  {"Tumbalalaika"}
  composer = "traditionel"
  arranger = " "
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key a \minor
  \time 3/4
}

voice_vocal = \fixed c' { 
  \tieDashed \slurDashed
  <>~^\box_a e4 e e e2 e4 e (d4.) c8 b,2~ b,4 d2 d4 d2 d4 d (c4.) b,8 a,2. \break
  a,4 (c) e a2 a4 c' b4. a8 e2. g4 (f4.) d8 b,2 (b,4) d4 c4. b,8 a,2.\bar "||" \break
  e4^\box_b e^\mark_refrain e e e e e d4. c8 b,2 b,4 d d d  \break
  d d d d c4.b,8 a,2 4 a, c e a2 4  \break
  c'4 b4. a8 e2 4 g f4. d8 b,2 4 d c4. b,8 a,2. \bar "|."
}

voice_chords = \chordmode {
  \override ChordName.font-size = #-1
   a2.:m s4*6 a2.:m e e:7 s2. a2.:m
   s4*12 d2.:m e:7 s2. a:m
}

stanza_one = \lyricmode 
  {\set fontSize = #-1 
   \set stanza = "1. "
   \align_syllables_left	
   
   Schtejt2 " a"4 bo2 -- cher,4 shtejt8*5 un8 tracht,2. 
   tracht2 un4 | tracht2 " a"4 | "gan"8*5 __  -- ze8 | Nacht2.
   wemn2 zu4 ne2 -- mn4 un4 nit4. far8 schemn,2.
   wem8*5 tsu8 nemmn2. un4 nit4. far8 -- schemn.2.
  }
  
stanza_two = \lyricmode 
  {\set fontSize = #-1 
   \set stanza = "2. "
   \align_syllables_left	
   Mai2 -- dl4 Mai2 -- dl4 chwell bay4. dir8 fregn2. 
   was2 ken4 | wach2 -- sen4 | wach -- sen4. on8 | regn,2.
   wos2 ken4 bre2 -- nen4 un nit4. oif8 -- hern,2. 
   wos8*5 ken8 ben2 -- kn,4 wej -- nen4. on8 trern?2.
   }
stanza_three = \lyricmode 
  {\set fontSize = #-1 
   \set stanza = "3. "
   \align_syllables_left	
   Na4 -- ri -- sher bo2 -- cher,4 wos darst4. du8 fregn.2 " A"4
   schtejn2 ken4 wa2 -- ksn,4 wa -- ksn4. on8 regn,2.
   li4 -- be ken bre2 -- nen4 un nit4. oif8 -- hern,2. 
   " a"4 hrts4. ken8 ben2 -- kn,4 wej -- nen4. on8 trern.2.
   
  }
  
refrain =   
  \lyricmode 
  {\set fontSize = #-1 
   \set stanza = "Refr. "
   \align_syllables_left	
   Tum4 -- ba -- la tum4 -- ba -- la tum4 -- ba4. -- la8 -- lai2 -- ka4
   Tum4 -- ba -- la tum4 -- ba -- la tum4 -- ba4. -- la8 -- lai2 -- ka4
   Tum4 -- ba -- la -- lai2 ka4 tum4 -- ba4. -- la8 -- lai2 -- ka4
   tum4 -- ba4. -- la8 -- lai2 ka4 frej -- lech4. sol8 sajn. 
  }

% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames \with {
      midiInstrument = "acoustic grand" }
      \voice_chords
    
    \new Staff 
      \relative c'' 
      {
       \global
       \voice_vocal
      }
     
    \new Lyrics {
      \stanza_one
      \refrain
    }
    \new Lyrics 
      \stanza_two
      
    \new Lyrics 
      \stanza_three

    
  >>
  \layout { }
  \midi { \tempo 4=220 }
}