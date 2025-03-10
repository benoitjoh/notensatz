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
  a,4 g, g,8 g,4. | a,8 a,4. a,4 g, | g, fis, fis,8 e,4. | fis,1 | \break
  a,4 g, g,8 g,4. | b,8 b,4. a,4 g, |  g, fis, fis,8 e,4. | fis,1 | \break
  a,4 g,2 g,8 g,  | b,8 b,4. a,4 g, |g, fis, fis,8 e,4. | fis,1 \break
  fis,4 e,2 e,8 e, | fis,2  g, | fis,1 r
  fis,4 e,2 e,8 e, | fis,2.  ais,,4 | b,,1 r \break
  
}

voice_bridge =  \fixed c'' {
  \mark #2
  \repeat volta 2 {
  a,4 g,2. a,4 g, a, g, | g,4 fis,2. | g,4 fis, g, fis, | fis,4 e,2. | }
  \alternative { { fis,2 g, | fis,1 | r1 } {fis,2 ais,, | b,,1 | r1} } \bar "|."
}


clarinet_stanza =  \fixed c'' { 
  \mark #1
   r1 r1 r8 d fis eis fis d b, fis, g,2 ~8 r8 r4| \break
   r1 r1 r4 d8 cis d b, f, fis, fis,2. r4| \break
   r1  r4 b,8 cis d4. cis 8 b,4 d, e, f, fis,1| \break
   r1 r1 r1 r1 
   r1 r1 r1 r1 \break
   
 
}


clarinet_bridge =  \fixed c'' {
  \mark #2
  \repeat volta 2 {
  r4 fis,4 fis,4 8 8~fis,4 e, e, cis,8 e,~e,1 | r4 g , a, b , | cis b, a, g,}
  \alternative { { e, d, d, cis,8 d,    ~d,1 r1 } {e,4 d, d, ais,8 b,    ~b,1 r1} } \bar "|."
}

\markup \vspace #3 % space between header and score

% -- music and text ------------------------------------------------

chords_stanza = \chordmode { 
  e1:m s b:m s e:m s b:m b:m	
  e1:m s b:m s 
  fis:7 s b:m	s
  fis:7 s b:m	s
  
}
chords_bridge = \chordmode { 
  \repeat volta 2 {e1:m s b:m s fis:7 }
  \alternative { {s b:m s} {s b:m s} }
}