% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Tonleitern rechts/links"
version_date = "4.2022"

\include "../_common/footers.ily"
\footer_common_with_pagenum 


\header {
  title = \markup \caps  {"Tonleitern rechts/links"}
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
   c4-1 d-2 e-3 f-1 g a b c'-5 b a g f-1 e-3 d c2\break 

}

voice_vocal_lh =  { 
   c4-4 d-3 e-2 f-1 g-4 a-3 b c'-1 b a g-4 f-1 e-2 d c2 \break

}

voice_vocal_lh_invert =  { 
   c'4-1 b a g-4 f-1 e-2 d c d-3 e-2 f-1 g-4 a-3 b c'2 \break

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
    
  \new Staff \with {\magnifyStaff 1.3} { 
    \global
     {
      \fixed c' {f,2 g, a, b, c d e f g a b c'}
      \bar "|."
     }
  }  
  
  \new  Lyrics \with {    
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3  %spacer before first textlines
        } \lyricmode { \set fontSize = #3 f g a b c d e f g a h c}

    \new Staff \with {\magnifyStaff 1.3} { 
    \global
    \clef bass
    \fixed c {f,2 g, a, b, c d e f g a b c'}
    
  }
  >>
  \layout { }

}


\markup \vspace #2 % space between header and score

\score {
  <<
    
  \new Staff  { 
      {
      \global
      <>_"c"^\markup \italic"rechte / linke Hand parallel"
      \transpose c c' {\voice_vocal_rh}
      \bar "|."
      \break
      <>_"d"^\markup \italic"jetzt rechts und links gegenäufig... "
     \transpose c c' {\voice_vocal_rh}
     \bar "|."
     \break
      
      <>_"d"^\markup \italic"in D... "
     \transpose c d' {\voice_vocal_rh}
     \bar "|."
     \break
      
      <>_"f"^\markup \italic"und nochmal in F"
      \transpose c f' {c4-1 d-2 e-3 f-4 g-1 a b c'-4 b a g f-4 e d c2-1}
      \fermata \bar "|."
      }
    }
    
  \new Staff {
    \global
    \clef bass
    <>_"c"
    \transpose c c {\voice_vocal_lh}
    <>_"d"
    \transpose c c, {\voice_vocal_lh_invert}
     \transpose c d, {\voice_vocal_lh_invert}
   
    \transpose c f, {c'4-1 b a g-1 f-2 e d c-5 d e f g-1 a-3 b c'2}

  }
   
  >>
  \layout { }
  \midi { \tempo 4=140 }
}