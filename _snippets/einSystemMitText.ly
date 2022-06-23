% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"


piecename_footerline = "Title for display in footer"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\header {
  title = \markup \caps  {"Title"}
  composer = "Komponist (Jahr)"
  copyright = ""
  arranger = " "
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key a \minor
  \time 3/4
}

voice_vocal = \fixed c' { 
  \slurDashed 
  e4~ e e e2 e4 e (d4.) c8 b,2~ b,4 d2 d4 d2 d4 d (c4.) b,8 a,2.
  a,4 c e a2 a4 c' b4. a8 e2. g4 (f4.) d8 b,2 (b,4) d c4. b,8 a,2. 
}

voice_chords = \chordmode {
  b2.:m s2.*2 fis2.:7
}
stanza_one = \lyricmode 
  {\set fontSize = #-2 
   Schteijt2 a bo -- cher } 


% -- container ---------------------------------------------
\score {
  <<
    
    \new ChordNames {
      \override ChordName.font-size = #-1
      \voice_chords
    }
    
  \new Staff 
    {
     \tempo "allegro"
     \global
     \voice_vocal
    }
   
  \new Lyrics 
    \stanza_one
  >>
  
  \layout { }
  \midi { \tempo 4=140 }
}