% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #5 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------

\include "music.ily"
\include "music_violin.ily"
\include "music_clarinet.ily"
\include "music_vocal.ily"
\include "lyrics.ily"

% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #1
      \transpose es c
      \voice_chords
    }
    
  \new Staff \with {instrumentName = "Violin" }
    {
     \global
     \key d \minor

     \transpose es c
     \voice_violin
    }
    
    \new ChordNames {
      \override ChordName.font-size = #-2
      \transpose es bes
      \voice_chords
    }
  \new Staff \with {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } }
    {
     \global
     \key c \minor
     \transpose es bes
     \voice_clarinet
    }
    
  \new Staff \with {instrumentName = "Vocal" }
    {
     \global
     \key d \minor

     \transpose es c
     \voice_vocal
    }
    
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_one
      \opa
      \lumbaj
    }
    
    

  >>
  \layout { }
  \midi { \tempo 4=95 }
}