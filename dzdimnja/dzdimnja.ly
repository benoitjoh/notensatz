\version "2.20.0"
piecename_footerline = "Жди меня"
version_date = "1.2022"


\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #4
}

\header {
  title = \markup \caps  {"Жди меня, и я вернусь"}
  composer = "Russia (~1942)"
}

\markup \vspace #4 % space between header and score

\include "music.ily"
\include "lyrics.ily"

\score {
<<
  \new ChordNames
    \voice_chords
    
  \new Staff \with {
    midiInstrument = "Acoustic Guitar (nylon)"
    instrumentName = "Vocal" } 
    { 
     \global
     \voice_vocal 
    }
  
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
      \stanza_one
    }
>>

\layout { }
\midi { \tempo 4=120 }
} 

\markup \vspace #4 

% the table below with the stanza 2 - 4
\stanza_tabloid
