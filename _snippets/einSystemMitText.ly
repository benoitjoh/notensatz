% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\paper {
  system-system-spacing.padding = #5.5
  #(set-paper-size "a4")
}

\header {
  title = \markup \caps  {"Titel"}
  composer = "Komponist (Jahr)"
  copyright = ""
  arranger = " "
  meter = \markup \italic {""}
  tagline = \markup {
  \halign #-13  \abs-fontsize #8 \italic { "jb. / lilypond.org"  #(strftime "%d. %B %Y" (localtime (current-time)))}
  }
}
\markup \vspace #1 % space between header and score

global = {
  \key d \minor
  \time 4/4
}

% -- data ------------------------------------------------
melodie = 
  { as c d8 es8 es4 }

text = \lyricmode 
  {\set fontSize = #-2 
   Ich4 stand a -- nd2 } 



% -- container ---------------------------------------------


\score {
<<
\new Staff 
  \relative c'' 
  {
   \global
   \clef treble
   \melodie
  }
 
\new Lyrics 
  \text
>>


  \layout { }
  \midi {
    \tempo 4=100
  }
}