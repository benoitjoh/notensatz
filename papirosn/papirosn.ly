% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #3 % spacer between the staff group
}

\include "music.ily"
\include "lyrics.ily"

\markup \vspace #0 % space between header and score

\score 
{
%\unfoldRepeats{
  <<
  \new ChordNames {\voice_chords \voice_chords_refrain}
  
  \new Staff \with { instrumentName = "Vocal" }
  \new Voice = "stanza" { 
    { \global \voice_vocal } 
    \new Voice = "refrain" { \voice_refrain} 
    }
   
  \new Lyrics \lyricsto "stanza"
    \stanza_one_first
  \new Lyrics \lyricsto "stanza"
    \stanza_one_second
    
  \new Lyrics \lyricsto "refrain"
    \refrain_first
  \new Lyrics \lyricsto "refrain"
    \refrain_second
  >>

%}
  \layout { }
  \midi { \tempo 4=120 }
}


  \markup \vspace #2 % space between header and score
  \markup \fontsize #-1 {
    \stanza_tabloid 
  }
