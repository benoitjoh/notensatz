% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #5 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------

\include "music.ily"

line_a = {
  bes,4 a,8 g, | bes,4 a,8 g, | r8 g fis g | d4 r |
  es4 d8 c es4 d8 c | g g fis g | d4 r |
}

line_b_a = {
  d4 g8 a | bes4 a8 g | f f c es | d4 r |
}

line_b_b = {
  g4 c8 es | d4 g,8 d | c c bes, a,  |g,2|
}
voice_vocal_a = \fixed c' { 
  \mark #1 
  \line_a
  \line_b_a 
  
  \repeat volta 2 {
    \line_b_b 
  }
 
  
}

voice_chords_a = \chordmode {
  g1:m g1:m  c1:m g1:m 
  g2:m es f bes4 b:dim  
  \repeat volta 2 {c2:m g2:m d:7 g:m}
}

% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \voice_chords_a
    }
    
  \new Staff \with {instrumentName = "Vocal" }
    {
     \global
     \key g \minor

     \voice_vocal_a
    }
    

  >>
  \layout { }
  \midi { \tempo 4=95 }
}