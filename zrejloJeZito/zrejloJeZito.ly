% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/makros.ily"
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

intro = {r2^\markup \italic "Intro" r2 r2}
intro_chords = \chordmode {g2:m g2:m g2:m}

line_a = {
  bes,4 a,8 g, | bes,4 a,8 g, | r8 g fis g | d4 r |
  es4 d8 c es4 d8 c | g g fis g | d4 r |
  
}
line_a_chords = \chordmode {g1:m g1:m  c1:m g1:m}

line_b_a = {
  d4 g8 a | bes4 a8 g | f f c es | d4 r |
}
line_b_a_chords = \chordmode { g2:m es f bes4 b:dim}

line_b_b_a = {
  g4 c8 es | d4 g,8 d |
}
line_b_b_b = {
   c c bes, a,  |g,2|
}

line_b_b_a_chords = \chordmode { c2:m g2:m }
line_b_b_b_chords = \chordmode { d:7 g:m }

viol_bridge = {r2 r2 r2}

voice_vocal_one = \fixed c' { 
  \intro
  ^\markup \italic "        Stanza 1"
  \set Score.currentBarNumber = #1
  \line_a \break
  \line_b_a 
  \repeat volta 2 {
    \line_b_b_a 
    \line_b_b_b 
  }
}

chords_one = \chordmode {
  \intro_chords
  \line_a_chords 
  \line_b_a_chords
  
  \repeat volta 2 {\line_b_b_a_chords \line_b_b_b_chords}
}

voice_vocal_two = \fixed c' { 
  \viol_bridge
  ^\markup \italic "           Stanza 2"
  \set Score.currentBarNumber = #1
  \line_a \break
   
  \repeat volta 2 {
    \line_b_a
    \line_b_b_a 

  }
    \alternative {
    { \line_b_b_b }
    { \line_b_b_b }
  }
}

chords_two = \chordmode {
  \intro_chords
  \line_a_chords 
 
  
  \repeat volta 2 { \line_b_a_chords \line_b_b_a_chords }
  \alternative {
    { \line_b_b_b_chords }
    { es4 f g2:m}
  }
  
}

% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \chords_one
      \chords_two
    }
    
  \new Staff \with {instrumentName = "Vocal" }
    {
     \global
     \key g \minor

     \voice_vocal_one \break
     
     \voice_vocal_two
     
     
    }
    

  >>
  \layout { }
  \midi { \tempo 4=95 }
}