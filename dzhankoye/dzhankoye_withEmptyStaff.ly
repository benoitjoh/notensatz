\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #8 % spacer between the staff group
  #(set-paper-size "a4")
}

\include "header.ily"

\markup \vspace #2 % space between header and score

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
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before first textlines
        }
      \stanza_one
   % empty staff for notes
  \new Staff {
    \clef "vaticana-do2" s1 * 16 }  
     
  >>
  \layout { }
}
