\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\include "header.ily"
\include "music.ily"
\include "lyrics.ily"

\markup \vspace #1 % space between header and score

\score {
  <<
    \new ChordNames \with {
      midiInstrument = "acoustic grand" }
      \voice_chords
      
    \new Staff  
      \new Voice = "lead" { 
           \oneVoice {\global \voice_vocal }  % stanza with one single voice
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
  >>
  \layout { }
  \midi { \tempo 4=220 }
}