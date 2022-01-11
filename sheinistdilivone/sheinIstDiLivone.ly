\version "2.20.0"

\header {
  title = "Shein is di Livone"
  composer = "Katharina Müther"
  copyright = ""
  arranger = "(Johannes)"
  tagline = \markup {
  \halign #-13  \abs-fontsize #8 \italic { "jb. / lilipond"  #(strftime "%d. %B %Y" (localtime (current-time)))}
  }
}

global = {
  \key d \minor
  \time 4/4
}

intro_git = {
  a2.~ a8 d16 e    f2.  d8 e16 f   g2~ g8 e8 f g  as2~ as8 f e8. bes'16 a4~ 8 f8 e bes' a g e d cis bes a}
 
akkorde = \chordmode { 
    s1  d:m g:m %as:7 
    }


intro_akk = {
  
}


\score {
<<
  \new ChordNames
%    \transpose d c 
    \akkorde

  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Guitar"
  } { 
    \clef "treble_8"
    \relative c' {
    \global
    \intro_git
    }
  
  }

  \new PianoStaff \with {
    midiInstrument = "Piano"
    instrumentName = "Piano"
  } { 
      \clef "treble"
      \relative c' {
      \global
      \intro_akk
      }  
    }
 
>>



\layout { }
  \midi {
    \tempo 4=150
  }
}
