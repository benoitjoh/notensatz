% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"


\include "../_common/makros.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\header {
  title = \markup \caps  {"Tumbalaleika"}
  composer = "traditionel"
  arranger = " "
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key a \minor
  \time 3/4
}

voice_vocal = \fixed c' { 
  e4~^\box_a e e e2 e4 e (d4.) c8 b,2~ b,4 d2 d4 d2 d4 d (c4.) b,8 a,2.
  a,4 c e a2 a4 c' b4. a8 e2. g4 (f4.) d8 b,2 (b,4) d4 c4. b,8 a,2.\bar "||"
  
  e4^\box_b e^\mark_refrain e e e e e d4. c8 b,2 b,4 d d d d d d d c4.b,8 a,2 4 a, c e a2 4 
  c'4 b4. a8 e2 4 g f4. d8 b,2 4 d c4. b,8 a,2. \bar "|."
}

stanza_one = \lyricmode 
  {\set fontSize = #-2 
   \set stanza = "1. "
   \override LyricText.self-alignment-X = #LEFT
   Schtejt2 a4 bo2 -- cher,4 \align_l shtejt8*5 un8 \align_l tracht,2. 
   tracht2 un4 | tracht2 a4 | "gan"8*5 __  -- ze8 | Nacht2.
   wemn2 zu4 ne2 -- mn4 un4 nit4. far8 schemn,2.
   wem8*5 tsu8 nemmn2. un4 nit4. far8 -- schemn.2.
  }

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
  \midi { \tempo 4=220 }
}