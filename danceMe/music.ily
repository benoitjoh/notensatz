\version "2.20.0"

% -- music and text ------------------------------------------------
global = {
  \key b \minor
  \time 4/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet

}

voice_vocal_stanza =  \fixed c'' { 
  \mark #1
  d4 c c8 c4. | d8 d4. d4 c | c b, b,8 a,4. | b,1 | \break
  d4 c c8 c4. | e8 e4. d4 c |  c b, b,8 a,4. | b,1 | \break
  d4 c2 c8 c  | e8 e4. d4 c |c b, b,8 a,4. | b,1 \break
  b,4 a,2 a,8 a, | b,2  c | b,1 r
  b,4 a,2 a,8 a, | b,2.  dis,4 | e,1 r \break
  
}

voice_bridge =  \fixed c'' {
  \mark #2
  \repeat volta 2 {
  d4 c2. d4 c d c | c4 b,2. | c4 b, c b, | b,4 a,2. | }
  \alternative { { b,2 c | b,1 } {b,2 dis, | e,1} } \bar "|."
}

\markup \vspace #3 % space between header and score

% -- music and text ------------------------------------------------

chords_stanza = \chordmode { 
  a1:m s e:m s a:m s e:m e:m	
  a1:m s e:m s 
  b:7 s e:m	s
  b:7 s e:m	s
  
}
chords_bridge = \chordmode { 
  \repeat volta 2 {a1:m s e:m s b:7 }
  \alternative { {s e:m } {s e:m} }
}