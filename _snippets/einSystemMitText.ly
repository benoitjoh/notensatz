% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"


\include "../_common/footers.ily"
\footer_common_with_pagenum 

\header {
  title = \markup \caps  {"Titel"}
  composer = "Komponist (Jahr)"
  copyright = ""
  arranger = " "
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key d \minor
  \time 4/4
}

voice_vocal = 
  { as c d8 es8 es4 }

stanza_one = \lyricmode 
  {\set fontSize = #-2 
   Ich4 stand a -- nd2 } 


% -- container ---------------------------------------------
\score {
  <<
  \new Staff 
    \relative c'' 
    {
     \global
     \voice_vocal
    }
   
  \new Lyrics 
    \stanza_one
  >>
  \layout { }
  \midi { \tempo 4=100 }
}