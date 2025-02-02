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
  f2:m s2 g2:m s2 f2:m s2 g2:7 c2:7 
  f2:m s2 g2:m s2 f2:m s2 g2:7 c2:7 
  f2:m s2 f2:m s2 f2:m s2 g2:7 c2:7 
  f2:m s2 f2:m s2 f2:m s2 g2:7 c2:7 
  c2:7 s2 f2:m s2 f2:m s2 g2:7 c2:7 
  f2:m s2 g2:7 c2:7 f2:m s2 g2:7 c2:7 
}

