\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\include "header.ily"
\include "music.ily"
\include "lyrics.ily"

\score {
  <<
    \new ChordNames \voice_chords
      
    \new Staff \with {instrumentName = "Vocal" }
      \new Voice = "lead" { 
           \oneVoice {\global \tempo 4=200 
                      \voice_vocal }  % stanza with one single voice
            <<
              \new Voice  = "refr_one" {
                  \voiceOne \voice_refrain }  % refrain, 2 voices
              \new Voice = "refr_second" {
                  \voiceTwo \magnifyMusic 0.7 \voice_refrain_second}  % second voice smaller notes
            >> 
       }
 
\new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_one
      \refrain
    }
    \new Lyrics 
      \stanza_two
      
    \new Lyrics 
      \stanza_three
         \new Staff \with {instrumentName= "Guitar"}
        <<
          \clef "treble_8"
          
          \new Voice {\voiceOne { \global \voice_guitar_one}} 
          \new Voice {\voiceTwo \voice_guitar_two }
        >>
  >>
  \layout {#(layout-set-staff-size 18.1) }
  \midi { \tempo 4=200 }
}