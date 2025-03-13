% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #8 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}
\header { instrument = "Vocal only"}

% -- music  ------------------------------------------------

\include "music.ily"
\include "music_violin.ily"
\include "music_vocal.ily"
\include "lyrics.ily"

\markup \vspace #1 % space between header and score
 
% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #1
      \transpose c c,
      \chords_b_c_d
    }
    

    
  \new Staff \with {instrumentName = "Vocal" midiInstrument = "marimba"}
   {     \global
     \key d \minor
     
   \new Voice = "lead" { 
   \oneVoice {
              \voice_vocal_b 
              \voice_vocal_c
              \voice_vocal_d
             }  % stanza with one single voice

     }
   }    

  >>
  \layout { }
  \midi { \tempo 4=95 }
}