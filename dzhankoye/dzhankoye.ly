\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #3 % spacer between the staff group
}

\markup \vspace #0 % space between header and score

\include "music.ily"
\include "lyrics.ily"

\score {
  <<
    \new ChordNames \with { \override ChordName.font-size = #+0 }
      \voice_chords
  
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = "Vocal" }
      {
        \global
        \tempo "Presto"
        \voice_vocal
      }
      
    \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.3  %spacer before first textlines
        }
      \stanza_one
      
    \new Lyrics  
      \stanza_two
    
    \new Lyrics 
      \stanza_three
  >>

  \layout { }
  \midi { \tempo 4=120 }
}
