\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\include "../_common/makros.ily"

\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #3 % spacer between systems
  #(set-paper-size "a4")
}

\markup \vspace #2 % space between header and score

\include "music.ily"
\include "lyrics.ily"



\score {
<<
  \new ChordNames \with { 
    \override ChordName.font-size = #-0
    }
  \chords_prelude
  
  \new Staff 
    { 
    \clef "treble" 
    \global
    \voice_prelude
    }
>>      
 \layout { }
\midi { \tempo 4=60 }

}
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
