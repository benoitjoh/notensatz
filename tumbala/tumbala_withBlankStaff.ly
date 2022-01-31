\version "2.20.0"

\include "header.ily"
\include "../_common/makros.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\include "music.ily"
\include "lyrics.ily"

\markup \vspace #1 % space between header and score

\score {
  <<
    \new ChordNames \with 
      \voice_chords
      
    \new Staff  
      \new Voice = "lead" { 
           \oneVoice {\global \voice_vocal \voice_refrain } 
       }
       
    \new Lyrics {
      \stanza_one
      \refrain
    }

    % empty staff for notes
    
    \new Staff {
      \magnifyStaff #1.0
      \clef "vaticana-do2" s4 * 3 * 32 }  
    
    \new Staff \with {instrumentName= "Guitar"}
      <<
        \clef "treble_8"
        
        \new Voice {\voiceOne { \global \voice_guitar_one}} 
        \new Voice {\voiceTwo \voice_guitar_two }
      >>
  >>
  \layout { }
}