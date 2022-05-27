% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Ikarus Dream"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\header {
  title = \markup \caps  {"Ikarus Dream"}
  composer = "Quadro Nuevo"
  copyright = ""
  arranger = " "
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key g \minor
  \time 2/4
}

voice_clarinet= \fixed c { 
  R2*15 
  %
  r4. d8 d'2~d'4. 16 es'16 d'2~d'4. c'16 bes c'2~2~2
  r4. d8 d'2~d'4. 16 es'16 d'2~d'4. c'16 bes a2~2~2 
  r4. bes8 g2~ g4. c'8 a2~4. f'16  es' 
  d'2~2~2~2 
}

voice_chords = \chordmode { 
  s2 * 8 
  g8.:m g16:m s8 g8:m g2:m   g8.:m g16:m s8 g8:m g2:m
  \transpose g c {g8.:m g16:m s8 g8:m g2:m   g8.:m g16:m s8 g8:m g2:m}
  

}

ostinato_one_g = { 
  g8.^"Gm" 16~ 8 d' g'8. 16~ g'8 d' g8. 16~ 8 d' g'2
}

ostinato_one_es = { 
  es8.^"Es" 16~ 8 es' g'8. 16~ g'8 es' es8. 16~ 8 es' g'2
}
ostinato_one_F = { 
  f8.^"F" 16~ 8 c' g'8. 16~ g'8 c' f8. 16~ 8 c' g'2
}

ostinato_one_bass_g = { 
  g8. 16~ 8 d' g'8. 16~ g'8 d' g8. 16~ 8 d' g'4. d8
}

voice_vocal = \fixed c' { 
 \repeat unfold 4 { \ostinato_one_g }
 %
 \ostinato_one_g
 \ostinato_one_es
 \ostinato_one_g
 \ostinato_one_F
 \ostinato_one_es
  \ostinato_one_g

}

voice_basso = \fixed c, { 
 \repeat unfold 4 { \ostinato_one_bass_g }
 
 \ostinato_one_bass_g 
 \ostinato_one_es
 \ostinato_one_g
 \ostinato_one_F
 \ostinato_one_es
  \ostinato_one_g


}



% -- container ---------------------------------------------
\score {
  <<
     
  \new Staff \with {
      midiInstrument = "clarinet"
      instrumentName = "Clarinet" }
    {
     \global
     \clef "treble_8"
     \voice_clarinet
    }
   \new ChordNames  { 
    \voice_chords     
     }
     
 \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = "Git" }
    {
     \global
     \voice_vocal
    }
    
   \new Staff \with {
      midiInstrument = "bassoon"
      instrumentName = "Basso" }
    {
     \global
     \clef bass
     \voice_basso
    }
  
  >>
  \layout { }
  \midi { \tempo 4=80 }
}