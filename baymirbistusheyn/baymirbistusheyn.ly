\version "2.20.0"

\paper {
  system-system-spacing.padding = #5.8
  #(set-paper-size "a4")
}
\header {
  title = "Bay mir bistu sheyn"
  composer = "Secunca Sholom"
  copyright = ""
  arranger = "Jacob Jacobs"
  meter = \markup \italic {""}
  tagline = \markup {
  \halign #-13  \abs-fontsize #8 \italic { "jb. / lilypond.org"  #(strftime "%d. %B %Y" (localtime (current-time)))}
  }
}

\markup \vspace #1 % space between header and score

global = {
  \key c \minor
  \time 2/4
}

melodie = {
   s4. g16-"Strophe" g16 es'8 8 8  d'16 c' g'8 d' r16 g16 c' d' es'8 8 8 d'16 c'  \break
   g'8 d' r16 g c' d es'8 8 8 d'16 c' f'8 16 16 8 es'16 d' g'8 8 fis' \tuplet 3/2 {es'16 fis' es'} \break
   
    \bar "|."
  }

 
akkorde = \chordmode { 
    s2 c2:m g2:m
    }

% lyrics

stanza_one = \lyricmode 
{ 
  \set fontSize = #-1
  ""4. Ven16 du solst8 sayn shvartz vi16 a tu8 -- "ter."8 16 Ven du host oy8 -- gen vi bay16 a 
  
}



\score {
<<
  \new ChordNames \with { 
    \override ChordName.font-size = #+1
  }
  \akkorde

  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Vocal"
  } 
  { 
    \clef "treble" 
    \tempo "Moderato"
    \transpose c c'
    {
    \global
    \melodie
    }
  
  }
% textstrophen
  \new Lyrics \with {    
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before textlines
  }
  {
    \stanza_one
  }



>>



  \layout {
  }
  \midi {
    \tempo 4=20
  }
}
