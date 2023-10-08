% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Tonleitern C/D"
version_date = "04.2022"

\include "../_common/footers.ily"
\footer_common_with_pagenum 


\header {
  title = \markup \caps  {"Tonleiter C-Dur / D-Dur"}
  instrument = "mit Fingersatz"
  composer = "j.b."
  copyright = ""
  arranger = " "
  }
  
\paper {
  system-system-spacing.padding = #8
}

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key c \major
  \time 4/4
}

voice_vocal_rh =  { 
   c4-1 d-2 e-3 f-1 g a b c'-5 b a g f-1 e-3 d c b,-2\break 
   c4-1 d-2 e-3 f-1 g a b c'-5 b a g f-1 e-3 d c b,-2 
}

voice_vocal_lh =  { 
   c4-4 d-3 e-2 f-1 g-4 a-3 b c'-1 b a g-4 f-1 e-2 d c b,-5 \break
   c4-4 d-3 e-2 f-1 g-4 a-3 b c'-1 b a g-4 f-1 e-2 d c b,-5 
}

bass_rh =  {
   c1-1 c f-4 g-5
   c1-1 c f-4 g-5
}
bass_lh =  {
   c1-5 c f-2 g-1
   c1-5 c f-2 g-1
}

% -- container ---------------------------------------------
\score {
  <<
    
  \new Staff  { 
      {
      \global
      <>_"c"^\markup \italic"Tonleiter in C"
      \transpose c c' {\voice_vocal_rh}
      \break
      <>_"d"^\markup \italic"jetzt rechts und links vertauscht... "
      \transpose c c' { \bass_rh}
      \break
      <>_"d"^\markup \italic"und nochmal in D"
      \transpose c d' {\voice_vocal_rh}
      | d'\fermata \bar "|."
      }
    }
    
  \new Staff {
    \global
    \clef bass
    <>_"c"
    \bass_lh
    \transpose c c {\voice_vocal_lh}
    <>_"d"
    \transpose c d { \bass_lh}
    | d

  }
   
  >>
  \layout { }
  \midi { \tempo 4=140 }
}