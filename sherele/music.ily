\version "2.20.0"

\include "../_common/makros.ily"

global = {
  \key e \minor
  \time 4/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  }
straigt = \markup {\musicglyph "scripts.caesura.straight"} 
