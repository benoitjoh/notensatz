% tepmlate for a three parts Staff with lyrices and a repeat in it

\version "2.20.0"

\header {
  title = \markup \caps  {"Titel"}
  composer = "Komponist (Jahr)"
  tagline = \markup {
  j.b. \tiny #(strftime "%Y-%b-%d" (localtime (current-time)))
  }
}

global = {
  \key d \minor
  \time 4/4
}

% -- data ------------------------------------------------

melodie = {
  a1-"Sopran"
  \repeat volta 2 {
  d4\p c a g
  }
  \alternative {
     {e1}
     {a1\mf  \bar "|." }
    }
}

clarinet = {
  d1\p
  \repeat volta 2 {
  f4 g a bes  
  }
  \alternative {
     { d1 \f }
     {f}
    } 
  
}


akkordeon = {
  <d f a d>1  
  \repeat volta 2 {
    f1  
  }
  \alternative {
     { d1 }
     {d,1}
    }  
 
  
}


akkorde = \chordmode { 
    d1:m d:m7 
    }

% lyrics

stanza_one = \lyricmode 
{ 
  \set fontSize = #-2
  \set stanza = "1. "
  dies1 ist Text
}
stanza_two = \lyricmode 
{ 
  \set fontSize = #-2
  \set stanza = "2. "
  dies1 i2. -- st Text
}




% -- container ---------------------------------------------


\markup \vspace #1 % space between header and score



\score 
{

%\unfoldRepeats %commet this line in to unfold all repeats for midi generation
{
<<

  \new ChordNames
    \transpose c c     
    \akkorde
    
  \new Staff \with {
    midiInstrument = "Violin"
    instrumentName = "Vocal"
    } 
    { 
    \clef "treble"
    \transpose c c
    \relative c'' {
    \global
    \melodie
    }  
  }
  
% textstrophen
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #4  %spacer before textlines
      \stanza_one
    }

  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #3 %spacer after textlines
      \stanza_two
    }

  \new Staff \with {
    midiInstrument = "Clarinet"
    instrumentName = "Clarinet (B)"
  } { 
    \clef "treble"
%    \transpose  c b  % clarinet in B  
    \relative c' {
    \global
    \clarinet
    }  
  }

  \new Staff \with {
    midiInstrument = "acoustic grand"
    instrumentName = "Bass"
  } { 
    \clef "bass"
    \transpose c c  
    \relative c {
    \global
    \akkordeon
    }  
  }

>>
} % unfoldRepeats


\layout { }
  \midi {
    \tempo 4=100
  }
} % score
