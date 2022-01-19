\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #2.4
}

\include "sheinIstDiLivone-header.ily"

\markup \vspace #1 % space between header and score

\include "sheinIstDiLivone-music.ily"
\include "sheinIstDiLivone-lyrics.ily"


bass_spacer =  { s1*27 }

\include "sheinIstDiLivone-music-intros.ily"


% stanza ... 
\score {
  \header { piece =  "" }
  <<
    \new ChordNames \with { \override ChordName.font-size = #+1 }
      \voice_chords
  
    \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
        instrumentName = "Vocal" 
        } 
      {
        \tempo "Moderato"
        \global
        \voice_vocal
      }
    \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3  %spacer before textlines
      }
      \stanza_one
  >>
  \layout {  }

}
