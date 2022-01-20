\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #1.2
}

\include "header.ily"
\include "music.ily"

\markup \vspace #0 % space between header and score

\score {
  \header { piece = "" }
  <<
    \new ChordNames \with {
      midiInstrument = "Acoustic Grand Piano"
      }
      \voice_chords
  
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = "Vocal" }
      {
        \global
        \tempo "Adagio"
        \voice_vocal
      }
   
    \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0.2  %spacer before textlines
      }
      \stanza_one
  >>

 \layout { }
 \midi { \tempo 4=100 }
}