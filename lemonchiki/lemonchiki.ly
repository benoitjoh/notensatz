% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Lemonchiki"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\header {
  title = \markup \caps  {"Lemonchiki"}
  composer = "?"
  copyright = ""
  arranger = " "
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key c \major
  \time 4/4
}

d_m = { d,8 <a, d f >8}

voice_vocal = \fixed c' { 
  c e g c' b16 c'8. g4 bes8 as g f e16 f8. g4
  c8 e g c' b16 c'8. g4 bes8 as g f e2
   \break
}


voice_chords = \chordmode {
  c1 bes2:m c2 c1 bes2:m c2
  
}

stanza_one = \lyricmode 
  {\set fontSize = #-2 
    } 


% -- container ---------------------------------------------
\score {
  <<
    
    \new ChordNames {
      \voice_chords
    }
    
  \new Staff 
    {
     \global
     \voice_vocal
    }
   
  \new Lyrics 
    \stanza_one
  >>
  \layout { }
  \midi { \tempo 4=120 }
}