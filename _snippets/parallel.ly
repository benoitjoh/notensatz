\version "2.20.0"


\header {
  title = "Präludium C-Dur"
  composer = "J. S. Bach"
  tagline = \markup {
    \tiny #(strftime "%Y-%b-%d" (localtime (current-time)))
  }
}

global = {
  \key d \minor
  \time 4/4
}
\parallelMusic voiceA,voiceB,voiceC {
  % Bar 1
  r8 g'16 c'' e'' g' c'' e'' r8 g'16 c'' e'' g' c'' e'' |
  r16 e'8.~   4              r16 e'8.~   4              |
  c'2                        c'2                        |

  % Bar 2
  r8 a'16 d'' f'' a' d'' f'' r8 a'16 d'' f'' a' d'' f'' |
  r16 d'8.~   4              r16 d'8.~   4              |
  c'2                        c'2                        |

}

\score {

\new StaffGroup <<
  \new Staff << \voiceA \\ \voiceB >>
  \new Staff { \clef bass \voiceC }
>>

\layout { }
  \midi {
    \tempo 4=60
  }
}