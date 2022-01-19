\version "2.20.0"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #1 % spacer between systems
  #(set-paper-size "a4")
}
\include "baymirbistusheyn-header.ily"

\markup \vspace #0 % space between header and score

\include "baymirbistusheyn-music.ily"
\include "baymirbistusheyn-lyrics.ily"

\score {
<<
  \new ChordNames \with { 
    \override ChordName.font-size = #-0
    }
  \voice_chords

  \new Staff \with { instrumentName = "Vocal" } 
    { 
    \clef "treble" 
    \tempo "Moderate"
    \global
    \voice_vocal
    }

  \new Lyrics \with {    
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1  %spacer before textlines
    }
    \stanza_one
>>
  \layout { }
}
