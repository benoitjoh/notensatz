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

voice_vocal_a = \fixed c'' { 
  \mark #1 
  %line1
  as16 16 8 f8 as16 16 |
  as16 f as f as4 |
  bes16 16 8 g8 bes 16 16|
  bes16 g bes g bes4 |
  as16 16 8 f8 as16 16 |
  as16 f g as b4  | 
  f16 g as b  f16 g as b |
  as8 g g4 \break
 
  %line 2
  as16 16 8 f8 as16 16 |
  as16 f as f as4 |
 
  bes16 g bes g bes g bes g  |
  bes16 g bes g bes4 |\break
  as16 16 8 f8 as16 16 |
  as16 f g as b4  | 
  f16 g as b  f16 g as b |
  as8 g g4 \break
 
  %line 3
  \mark #2 
  c'2 |
  as8. f16 b4|
  c'4 ~8. b16 |
  as8. g16 as4 |
  as4 e16 f g as |
  b8 as g f |
  g2 ~2  \break

  %line 4
  as2  ~8 b b as |
  c' b b4 (b2) (b4) e16 f g as |
  b8 as g f |
  g2 (2) \break
   
  %line 5
  r2 r2 r2 r2
  r8 <f,c> r8 <f,c> |
  r8 <f,c> r8 <f,c> |
  r8 <g,d> r8 <g,d> |
  r8 <e,c> r8 <e,bes,> | \break
  
  r8 <f,c> r8 <f,c> |
  r8 <f,c> r8 <f,c> |
  r8 <g,d> r8 <g,d> |
  r8 <e,c> r8 <e,bes,> | 

  r8 <f,c> r8 <f,c> |
  r8 <f,c> r8 <f,c> |
  r8 <g,d> r8 <g,d> |
  r8 <e,c> r8 <e,c> | 

}


% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \voice_chords_a
    }
    
  \new Staff \with {instrumentName = "Violin" }
    {
     \global
     \key f \minor

     \voice_vocal_a
    }
    

  >>
  \layout { }
  \midi { \tempo 4=95 }
}