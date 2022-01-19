\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #5.2
}

\include "livone-header.ily"

\markup \vspace #1 % space between header and score

\include "livone-music.ily"
\include "livone-lyrics.ily"

\score {
  <<
    \new ChordNames \with { \override ChordName.font-size = #+1 }
      \voice_chords
  
    \new Staff 
      {
        \tempo "Moderato"
        \global
        \voice_vocal
      }
    \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before textlines
      }
      \stanza_one
      
    % empty staff for notes
    \new Staff {
      \clef "moderntab" s1 * 32 
      }  
  >>

  \layout {  }
}
