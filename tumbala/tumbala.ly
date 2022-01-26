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
  \key b \minor
  \time 3/4
}

voice_vocal = \fixed c' { 
  \tieDashed \slurDashed
  <>~^\box_a fis4 fis fis fis2 fis4 fis (e4.) d8 cis2~ cis4 e2 e4 e2 e4 e (d4.) cis8 b,2. \break
  b,4 (d) fis b2 b4 d' cis'4. b8 fis2. a4 (g4.) e8 cis2 (cis4) e4 d4. cis8 b,2.\bar "||" \break
  
}

voice_refrain = \fixed c' {  
  fis4^\box_b fis^\mark_refrain fis fis fis fis fis e4. d8 cis2 cis4 e e e  \break
  e e e e d4.cis8  b,2 4 b, d fis b2 4  \break
  d'4 cis'4. b8 fis2 4 a g4. e8 cis2 4 e d4. cis8 b,2. \bar "|."
}

voice_refrain_second= \fixed c'
  {
  d4 d d d d d d d4 b,4 cis2 cis4 cis4 4 4 4 4 4 4 4 fis,  b,2 b,4 
  d4 d cis b,2 b,4 b, d4. fis8 b2 b4 g g4. cis8 fis2 fis4 fis,4 gis,4. ais,8 b,2.
  }


voice_chords = \chordmode {
  \override ChordName.font-size = #-1
   b2.:m s2. b2.:m s2.fis fis:7 s2. b2.:m
   s4*12 e2.:m fis:7 s2. b:m
}

stanza_one = \lyricmode 
  {\set fontSize = #-2 
   \set stanza = "1. "
   \align_syllables_left	
   
   Schtejt2 "  a"4 bo2 -- cher,4 shtejt8*5 un8 tracht,2. 
   tracht2 un4 | tracht2 " a"4 | "gan__"8*5 -- ze8 | Nacht2.
   wemn2 zu4 ne2 -- mn4 un4 nit4. far8 schemn,2.
   wem8*5 tsu8 nemmn2. un4 nit4. far8 -- schemn.2.
  }
  
stanza_two = \lyricmode 
  {\set fontSize = #-2 
   \set stanza = "2. "
   \align_syllables_left	
   "Mej__"2 -- dl4 Mai2 -- dl4 chwell bay4. dir8 fregn2. 
   was2 ken4 | wach2 -- sen4 | wach -- sen4. on8 | regn,2.
   "wos__"2 ken4 bre2 -- nen4 un nit4. oif8 -- hern,2. 
   "wos__"8*5 ken8 ben2 -- kn,4 wej -- nen4. on8 trern?2.
   }
   
stanza_three = \lyricmode 
  {\set fontSize = #-2 
   \set stanza = "3. "
   \align_syllables_left	
   Na4 -- ri -- sher bo2 -- cher,4 wos darst4. du8 fregn.2 " A"4
   schtejn2 ken4 wa2 -- ksn,4 wa -- ksn4. on8 regn,2.
   li4 -- be ken bre2 -- nen4 un nit4. oif8 -- hern,2. 
   " a"4 hrts4. ken8 ben2 -- kn,4 wej -- nen4. on8 trern.2.
   
  }
  
refrain =   
  \lyricmode 
  {\set fontSize = #-2 
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
      \new Voice = "lead" { 
           \oneVoice {\global \voice_vocal }  % stanza with one single voice
            <<
              \new Voice  = "refr_one" {
                  \voiceOne \voice_refrain }  % refrain, 2 voices
              \new Voice = "refr_second" {
                  \voiceTwo \magnifyMusic 0.8 \voice_refrain_second}  % second voice smaller notes
            >> 
       }

\new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
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