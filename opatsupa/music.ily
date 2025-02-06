\version "2.20.0"

\include "../_common/makros.ily"

global = {
  \time 2/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet

}
%\bar check

straigt = \markup {\musicglyph "scripts.caesura.straight"} 

voice_chords = \chordmode {
  d2:m s2 e2:m s2 d2:m s2 e2:7 a2:7 
  d2:m s2 e2:m s2 d2:m s2 e2:7 a2:7 
  d2:m s2 d2:m s2 d2:m s2 e2:7 a2:7 
  d2:m s2 d2:m s2 d2:m s2 e2:7 a2:7 
  a2:7 s2 d2:m s2 d2:m s2 e2:7 a2:7 
  d2:m s2 e2:7 a2:7 d2:m s2 e2:7 a2:7 
}


voice_basso = \fixed c { 
  d4 a, d a,8 d e4 b, e b, d a, d b, e b, cis a,
  %9
  d4 a, d a,8 d e4 b, e b, d a, d b, e b, cis a,
  %17
  d4 a, d a, d a, d a, d a, d a, e b, cis a,
  %25
  d4 a, d a, d a, d a, d a, d a, e b, cis a,
  %33
  e a, e a, d a, d a, d a, d a, e b, cis a,
  %41
  d a, d a, e b, cis a, d a, d a, e b, cis a,
  
}