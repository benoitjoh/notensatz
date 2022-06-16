% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Makedonsko"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\header {
  title = \markup \caps  {"Makedonsko Devoje"}
  composer = "Komponist (Jahr)"
  copyright = ""
  arranger = " "
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key g \minor
  \time 7/8
}

voice_chords = \chordmode {
  g2..:m s2.. c2..:m  g2..:m
  g2..:m s2.. d2..:7  g2..:m
}
voice_vocal = \fixed c' { 
  g4 g'8 f'4 g' f' g'8 d'8~4. es'4 d'8 c'4 es'4 d'2.. \break
  g4 g'8 f'4 g' f' g'8 d'8~4. d'4 c'8 bes4 a4 g2..
  
}

stanza_one = \lyricmode 
  {\set fontSize = #-2 
   Makedonsko -  } 


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
  \midi { \tempo 4=140 }
}