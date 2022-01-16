\version "2.20.0"
upper = \relative c' {
\clef treble
\key f \major
\time 3/4
 r1 * 3/4 r1 * 3/4 r1 * 3/4 r8 c8 d e f g
}

lower = \relative c {
\clef bass
\key f \major
\time 3/4
f,4 <c' f a>4 <c f a>^. c, <c' f a> <c f a>-. f, <c' f a> <c f a>-. c , <c' f a> <c f a>^.
} 

\score {
\new PianoStaff <<
\new Staff = "upper" \upper
\new Staff = "lower" \lower
>>  
\layout { }
\midi { \tempo 4=120 }
}