\version "2.20.0"

\paper {
  system-system-spacing.padding = #1.3 
%WITHEMPTYSTAFF-ON% system-system-spacing.padding = #8 % bigger spacings on this variant
}

\include "avremel-header.ily"
\include "avremel-music.ily"

\markup \vspace #0 % space between header and score

\score {\header {
    piece = ""
  }
  
<<
  \new ChordNames \with {
    midiInstrument = "Acoustic Grand Piano"
  }
    \akkorde

  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Vocal"
  }
  {
   \global
   \clef treble
   \tempo "Adagio"
   \melodie
  }
 
  \new Lyrics \with {    
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1  %spacer before textlines
  }
    \text
    
%WITHEMPTYSTAFF-ON%  \new Staff {\clef "moderntab" s2 * 72 }  % empty staff variant
>>

 \layout { }
 \midi { \tempo 4=100 }
}