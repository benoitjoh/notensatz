\version "2.20.0"


\header {
  title = "Shein is di Livone"
  composer = "Katharina Müther"
  tagline = \markup {
    \tiny #(strftime "%Y-%b-%d" (localtime (current-time)))
  }
}

global = {
  \key d \minor
  \time 4/4
}

intro = {
  r2 a4 d8 e 
  f8 f4. e4 f8 g
  \tuplet 3/4 { g16 (a bes }
  \tuplet 3/4 { g16 a bes }
  \tuplet 3/4 { g16 a bes }
  \tuplet 3/4 { g16 a bes) }
}

classicalGuitar = 
  \relative c' {
  \global
  \intro
}

\score {
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Guitar"
  } { 
    \clef "treble_8"
    
    \classicalGuitar 
  
  }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
