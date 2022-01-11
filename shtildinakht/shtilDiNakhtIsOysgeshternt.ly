\version "2.20.0"

\header {
  title = \markup \caps  {"Shtil di Nakht is oysgeshternt"}
  composer = "Hirsh Glick (1942)"
  %copyright = "(c) Johannes Benoit"
  %arranger = "Johannes"
  tagline = \markup {
  j.b. \tiny #(strftime "%Y-%b-%d" (localtime (current-time)))
  }
}

global = {
  \key d \minor
  \time 2/4
}

% -- data ------------------------------------------------

melodie = {
  a4. f8 bes a g f g4. f16e f4. r8
  \break
  c'4. a8 d c f, g a2~ a8 r8 a a
  \break
  
  \repeat volta 2 {
  d4  c8 d bes bes a d, g4. f16 e f4. r8
  \break
  e4 a8 a c bes a g 
  }
  \alternative {
     { d'2~ | d8 r a  a }
     { d,4 r4 \bar "|."  }
    }
   
}

clarinet = {
  d4. d8 e2 e2 f
  a4. f8  bes8 a f g a2 r 
  \repeat volta 2 {
    f2 d  e  a  
    c4 r d4 a 
  }
  \alternative {
     { d2~ | d8 r f,  f }
     {f2}
    }  
  
}


akkordeon = {
  <d f a d>4 r   <g, d' g bes> r  <c e g c> r  <c f a c> r
  <c f a c> r <bes d f bes> r <c f a c> r r2
  \repeat volta 2 {
    <d f a d>4 r <g, d' g bes> r  <c e g c> r <f a c f> r 
    <a, c e a> r <g d' g bes>4 <a c e g a> 
  }
  \alternative {
     {<d f a d>4 r | d4 r  }
     {<d f a d>2}
    }  
  
}

words = \lyricmode { 
  \set stanza = "1."
  Shtil4. di8 Nakht8 is ois -- ge -- ster2 -- nt 
  un4. der8 frozt hat shtark ge -- brent2 4 tsi8 ge
  denks4 -- tu8 vi ikh hob dikh ge -- le2 -- rnt
  hal4 -- tn8 a shpa -- yer in di hen2 -- t.8 8 tsi ge
  hent
}

akkorde = \chordmode { 
    d2:m g:m c f f bes f f  d:m g:m c f a g4:m a4:7 d1:m d2:m 
    }



% -- container ---------------------------------------------


\markup \vspace #2 % space between header and score

\score {
%\unfoldRepeats %commet this line in to unfold all repeats for midi generation
{
<<
  
  \new ChordNames
    \transpose d c 
    \akkorde
    
  \new Staff \with {
    midiInstrument = "Violin"
    instrumentName = "Vocal"
    } 
    { 
    \clef "treble"
    \transpose d c
    \relative c'' {
    \global
    \melodie
    }  
  }
  
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #4
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #3
      \words
    }

  \new Staff \with {
    midiInstrument = "Clarinet"
    instrumentName = "Clarinet (B)"
  } { 
    \clef "treble"
    \transpose  d d  % clarinet in B --> d will be a c  
    \relative c' {
    \global
    \clarinet
    }  
  }

  \new Staff \with {
    midiInstrument = "Acoustic Grand"
    instrumentName = "Akkordeon"
  } { 
    \clef "bass"
    \transpose d c  
    \relative c {
    \global
    \akkordeon
    }  
  }
>>
} % unfoldrepeats


\layout { }
  \midi {
    \tempo 4=100
  }
} % score
