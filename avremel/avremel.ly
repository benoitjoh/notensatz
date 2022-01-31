\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  %system-system-spacing.padding = #1.2
  ragged-last-bottom = ##f
}

\include "music.ily"

\markup \vspace #0 % space between header and score

\score {
  \header { piece = "" }
  <<
    \new ChordNames \with {
      midiInstrument = "acoustic grand" }
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