\version "2.20.0"

% \once \override Slur #'direction = #DOWN
%\once \override Tie #'direction = #DOWN

\addQuote "flute" { s2 s4 e''~ e'' g'' }

clarinet = \fixed c' {
  \override Slur #'direction = #UP
  b2^"Flute" 
  \cueDuring "flute" #UP {  
    b2  c4 (c8) g8g4 b4 
  }
}

\score {
    \new Staff {
      \clarinet
    }
    \midi {\tempo 4=120}
    \layout {}
}
