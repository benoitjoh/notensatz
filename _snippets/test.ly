\version "2.20.0"

flute = \relative {
  s4 s4 e'' g
}
\addQuote "flute" {s1  s4 s4 e'' g'' }

pianoRH = {
  \once \override Slur #'direction = #DOWN
  d'2-4  (d'2)
  c''4. g8
  % position name of cue-ing instrument just before the cue notes,
  % and above the staff
  <>^\markup { \right-align { \tiny "Flute" } }
  \cueDuring "flute" #UP { g'4 bes'4 }
}
pianoLH = \relative { d2 d2 c4 <c' e> e, <g c> }

\score {
  \new PianoStaff <<
    \new Staff {
      \pianoRH
    }
    \new Staff {
      \clef "bass"
      \pianoLH
    }
  >>
}
