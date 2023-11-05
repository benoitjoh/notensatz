\version "2.20.0"

\include "../_common/makros.ily"

global = {
  \time 7/8
  \key e \minor
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  }
straigt = \markup {\musicglyph "scripts.caesura.straight"} 


voice_vocal_a = \fixed c'' { 
  \set Score.currentBarNumber = #3
  \clef violin
  \mark \box_a 
   fis8\segno[ g e]  fis4\prall e8 [dis] dis[ e c] dis4 c8[ b,]
   b,[ c a,] b, [c] dis[ e] \break 
   fis[ g e] fis2 fis8[ g e] fis4 e8[ dis] dis[ e c] dis4 c8[ b,] \break
   b,[ c a,] b,[ c] dis[ a,] b, 4.~2 
  \bar "||"\break

}

voice_vocal_b = \fixed c'' { 
  \set Score.currentBarNumber = #11
  \mark \box_b
  dis4 fis8 e[dis] c4 | b,4.~2~4.~2 |
  fis4 a8 g[ fis] e[dis16 e] | fis4.~2~4.~2 |\break
}

voice_vocal_c = \fixed c'' { 
  \mark \box_c 
  \set Score.currentBarNumber = #17
  \repeat volta 2 {
    <g b>4 8 4 4 | <g b>8 [<fis a> <g b>] <a c'>4  8[ <g b>8] |
    <fis a>4 8 4 4 | <fis a>8[ <e g> <fis a>] <g b>2 | \break
    g4 8 4 a8[ b] c'4 b8 a4 g |
    fis4 8 g[ fis] g[ a] | fis4 a8 g[ fis] e[ dis] | \break 
    dis4.~2~
  }
  \alternative { 
    {dis8[ c dis] e [fis] g[ a] } 
    {dis2.~8} 
  } \break
}

voice_vocal_d = \fixed c'' { 
  \set Score.currentBarNumber = #28
  \mark \box_d
  b,8-> [c a,] b,-> [c] dis[ e] | fis-> [g e] fis4 r4 |
  a4\prall g8 fis4\prall e8[ dis]  | \break
  dis8-> [e c] b,4-> 4 | b,8-> [c a,] b,8-> [c] dis[ e] |
  fis8-> [g e] fis4 r4 | a4\prall g8 fis4\prall e8[ dis] | \break
  dis8-> [e c] b,4-> 4 | b,8-> [c a,] b,-> [c] dis [e] | fis-> [g e] fis4 r4 | \break
  fis4\prall e8^\markup \bold \italic"2. Al Coda" dis [c] b, [c] \bar "||"
  b,4.~2~4.~2  
  \repeat volta 2 { b,8^\markup \bold \italic"Impro"[ c dis] e [fis] g [a] | 
                    s4.^\markup \bold \italic"D.S. al coda" s2 | s4. s2 }
  
  b,8->^\markup \bold \italic"Coda" [dis fis] b-> r8 r4  \bar "."
  
  \break
}



voice_chords_a = \chordmode {
   b4.:7 s2 |  s4. s2 | s4. s2 | s4. s2 | s4. s2 | s4. s2 | a4.:m s2 | b4.:7 s2
}

voice_chords_b = \chordmode {
 b4.:7 s4 a:m b4.:7 s2 s4. s2 b4.:7 s4 a:m b4.:7 s2 s4. s2 |
}

voice_chords_c = \chordmode {
  \repeat volta 2 {
  e4.:m s2 e4.:m a2:m d4.:7 s2 | d4.:7 g2 e4.:m s2 a4.:m s2 b4.:7 s2 b4.:7 a2:m | b4.:7 b2:7
  }
  \alternative { 
    {b4.:7 s2} 
    {b4.:7 s2} 
  }
}

voice_chords_d = \chordmode {
  b4.:7 s2 | s4. s2 | a4.:m s2 | b4.:7 s2 | s4. s2 | s4. s2 |
  a4.:m s2 | b4.:7 s2 | s4. s2 | s4. s2 | a4.:m s2 | b4.:7 s2 | b4.:7 s2 |
  s4. s2 | s4. s2| s4. s2 | b4.:7 s2
}
