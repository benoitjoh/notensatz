\version "2.20.0"

\include "../_common/makros.ily"

global = {
  \time 2/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet

}
%\bar check

straigt = \markup {\musicglyph "scripts.caesura.straight"} 

voice_vocal_a = \fixed c' { 
  \mark #1 r8 d8 fis g 

}

voice_chords_a = \chordmode {
  }


