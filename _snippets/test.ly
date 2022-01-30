\version "2.20.0"

\addQuote "flute" { s1  s4 s4 e'' g''8 g''8~ g''2 r4 d'' }

pianoRH = \fixed c' {
  \override Slur #'direction = #UP
  
  \override Tie #'direction = #DOWN d2-4  (d2)
  c'4  (c'8) g8
  % position name of cue-ing instrument just before the cue notes,
  % and above the staff
  <>^\markup { \right-align { \tiny "Flute" } }
  \cueDuring "flute" #UP { g4 b4 b2 (b)}
  
}
pianoLH = \fixed c { b2 d2 \grace {d16 (e16 d)} c4 <c' e> e, <g c> b, <d g b> b,, <d g b>}

\score {
  \new PianoStaff  <<
 
    \new Staff {
       \magnifyStaff 1.0 { \pianoRH }
    }
    \new Staff {
      \clef "bass"
      \magnifyStaff 0.8 { \pianoLH }
    }
  
  >>
  
  \midi {\tempo 4=120}
  \layout {}
}
