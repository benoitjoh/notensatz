\version "2.20.0"

\include "../_common/makros.ily"

global = {
  \time 7/8
  \key e \minor
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  }
straigt = \markup {\musicglyph "scripts.caesura.straight"} 
