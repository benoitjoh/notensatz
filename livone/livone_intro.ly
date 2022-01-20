\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #2
}

\include "header.ily"
\header {
  subtitle = "- Intros -"
  arranger = \markup \italic"Katharina Müther & Orakel"
}
\markup \vspace #1 % space between header and score

\include "music.ily"

bass_spacer =  { s1*27 } % pause for basso voice from the beginning to last bar

\include "music-intros.ily"

\score {
  \header { piece = "Concha" }
  \new Staff {
    \global
    \clef "treble_8"
    \tempo "Adagio (ad libitum)"
    \voice_concha_base 
    }
  \layout { }
}

\markup \vspace #2 % space between concha and intro

\score {
  \header { piece = "Intro" }
  <<
    \new ChordNames    
      \voice_intro_chords
  
    \new Staff {
      \global
      \tempo "Adagio ad libitum" 
      \voice_intro_accordion
      }  
    
    \new Staff { 
      \global
      \clef "treble_8"
      \voice_intro_guitar
      }
    
  >>
  \layout {  }

}
