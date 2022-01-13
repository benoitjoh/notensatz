\version "2.20.0"

\paper {
  system-system-spacing.padding = #5.8
  #(set-paper-size "a4")
}
\header {
  title = "Dzhankoye"
  composer = "trad. (Ukraine)"
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

melodie = {
   d8 d d f a a a f g g g e f f e d f f e f g g f e d2. r4 \break
   d8 d d f a a a f g g g e f f e d f f e f g g f e d2. r4 \break
   g8 r g r c' c' c' bes a f f a c' bes a g d f e f g r e r a r r4 r2 \break
   g8 r g r c' c' c' bes a f f a c' bes a g d f e f g r e r d2. r4 
   
   \bar "|."
  }

 
akkorde = \chordmode { 
    d1:m s1 
    
    }

% lyrics

stanza_one = \lyricmode 
{ 
  \set fontSize = #-2
  \set stanza = "1. "
  Az8 men fort keyn Sé -- vas -- top -- ol iz nit vayt fun Sím -- fer -- op -- ol 
  Dor -- tn iz a stan -- tzi -- ye far -- an
  
  
}


% -- container ------------------------------------------------

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
    \tempo "Presto"
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
    \tempo 4=120
  }
}
