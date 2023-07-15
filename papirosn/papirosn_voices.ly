% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #3 % spacer between the staff group
}

\include "music.ily"
\include "lyrics.ily"

\markup \vspace #0 % space between header and score



\score 
{
%\unfoldRepeats{
  <<
  %\new ChordNames {\voice_chords \voice_chords_refrain}
  
  \new Staff \with { instrumentName = "Vocal" }
  \new Voice = "stanza" { 
    { \global \voice_vocal } 
    \new Voice = "refrain" { \voice_refrain} 
    }
    
  \new Staff {
    \magnifyStaff #1.0
    \clef "vaticana-do2" s1 *19 }  

  \new Staff \with { instrumentName = "Basso" midiInstrument = "acoustic bass"}
   { \voice_bass
     \voice_bass_refrain
   }
   
 >>

%}
  \layout { }
  \midi { \tempo 4 = 120 }
}

