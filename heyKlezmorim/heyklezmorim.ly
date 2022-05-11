\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #7.8
  ragged-last-bottom = ##t
}

\include "music.ily"


\include "lyrics.ily"

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
        \tempo "Moderato"
        \voice_vocal
      }
   
    \new Lyrics \with {    
      %\override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0.2  %spacer before textlines
      }
      \stanza_one
      
      % empty staff for notes
  \new Staff {
    \clef "vaticana-do2" s1 * 12 }  
  \new Staff {
    \clef "vaticana-do2" s1 * 12 }  

  >>


 \layout { }
 \midi { \tempo 4=100 }
}

\stanza_tabloid_a
\markup \vspace #1.5 % space between header and score

\stanza_tabloid_b
%\markup \vspace #0.5 % space between header and score
