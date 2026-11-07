\version "2.20.0"

% -- music and text ------------------------------------------------
global = {
  \key d \minor
  \time 4/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet

}


\markup \vspace #3 % space between header and score

% -- music and text ------------------------------------------------


