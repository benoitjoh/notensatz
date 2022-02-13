% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Dvorak Ung. Tanz"

\include "../_common/footers.ily"
\footer_common_with_pagenum 


\header {
  title = \markup \caps  {"Ungarischer Tanz"}
  composer = "Anton Dvorak"
  copyright = ""
  arranger = " "
  }
  
\paper {
  system-system-spacing.padding = #8
}

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key c \minor
  \time 4/4
}

voice_vocal = \fixed c' { 
   g4. f8 g4. f8 as4. g8 d4. es8 c1 \break
   g4. f8 g4. as8 c'4. bes8 g4. as8  f1\break 
   as4. g8 as4. g8 g4. f8 d4. es8 d1 \break
   as4. g8 as4. g8 g4. f8 d4. es8 c1\fermata
}

lh = \chordmode {
  c,1:m g,,1 c,1:m
  c,1:m c,1:7 f,:m
  f,1:m g,1 1
  f,,1:m g,, c,:m
}

% -- container ---------------------------------------------
\score {
  <<
  \new ChordNames
    \lh
    
  \new Staff  { 
      {
      \global
      \voice_vocal
      }
    }
    
  \new Staff {
    \global
    \clef bass
   \lh 
  }
   
  >>
  \layout { }
  \midi { \tempo 4=140 }
}