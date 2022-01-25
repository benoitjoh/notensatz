\version "2.20.0"

global = {
  \key b \minor
  \time 4/4
}

% -- data ------------------------------------------------

voice_vocal = \fixed c' {
  \clef "treble"
  b,8 cis d2 b,4 d8 cis e2. e4. cis8 e4. d8 d1 \break
  d8 e fis2 d4 fis8 e g2. g4. fis8 g4. a8 fis2. g8 a \break 
  b4. b8 cis'4. cis'8 a1 g4. fis8 g4. a8 fis1 \break
  e8 fis8 g2 b4 b,8 cis d2. cis2. b,4 cis2 d2 b,1 r1
  \bar "|."
  
  
   
}
voice_chords = \chordmode { 
    b1:m e:m fis:7 b:m 
    b1:m e:m a:7 d2. d4:7 
    g2 cis:7 fis1:m 
    g2 a:7 d1
    e1:m b:m e:m fis:7 b:m fis:7
    }

