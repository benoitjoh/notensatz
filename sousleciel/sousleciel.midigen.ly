% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 


% ---------------------------------------
\include "../_common/makros.ily"
global = {
  \time 3/4
}
\include "music.ily"
\include "lyrics.ily"

% ---------------------------------------

\score 
{
\unfoldRepeats{
  <<
  \new ChordNames { \voice_chords }
  
  \new Staff \with { instrumentName = "Vocal" }
  \new Voice = "stanza" { 
    { \global \voice_vocal } 
    }

  >>

}
  \layout { }
  \midi { \tempo 2=120 }
}


%\markup \vspace #2 % space between header and score
%  \markup \fontsize #-1 {
%    \stanza_tabloid 
%  }
