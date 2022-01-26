\version "2.20.0"

\include "../_common/makros.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\include "header.ily"
\include "music.ily"

\markup \vspace #1 % space between header and score

\score {
  <<
    \new ChordNames \with 
      \voice_chords
      
    \new Staff  
      \new Voice = "lead" { 
           \oneVoice {\global \voice_vocal \voice_refrain } 
       }

    % empty staff for notes
    
    \new Staff {
      \magnifyStaff #1.1
      \clef "vaticana-do2" s4 * 3 * 32 }  
  >>
  \layout { }
}