\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #5 % bigger spacings on this variant
}

\include "avremel-header.ily"
\include "avremel-music.ily"

\markup \vspace #0 % space between header and score

\score {
<<
  \new ChordNames 
    \voice_chords

  \new Staff {
    \global
    
    \tempo "Adagio"
    \voice_vocal
  }
 
  \new Lyrics \with {    
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before textlines
  }
    \stanza_one
  
  % empty staff for notes
  \new Staff {
    \clef "moderntab" s2 * 72 }  
>>

 \layout { }
}