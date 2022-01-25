\version "2.20.0"

\header {
  title = "Präludium C-Dur"
  composer = "J. S. Bach"
  arranger = " "
  tagline = \markup {
    \tiny #(strftime "%Y-%b-%d" (localtime (current-time)))
  }
}

global = {
  \key d \minor
  \time 4/4
}
\parallelMusic voiceA, voiceB, voiceC 
  \fixed c'{
  % Bar 1
  s8 g16 c' e' g c' e'      s8 g16 c' e' g c' e'      |
  r16 e8.~   4              r16 e8.~   4              |
  c2                        c2                        |

  % Bar 2
  s8 a16 d' f' a d' f'      s8 a16 d' f' a d' f'      |
  r16 d8.~   4              r16 d8.~   4              |
  c2                        c2                        |

}

\score {

\new StaffGroup 
  <<
    \new Staff 
    << 
      \new Voice {\voiceA} 
      \new Voice {\voiceB}  
    >>
    \new Staff { \clef bass \voiceC }
  >>

  \layout { }
  \midi { \tempo 4=60 }
}