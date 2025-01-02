\version "2.20.0"
piecename_footerline = "Hörst Du Mein Rufen"
version_date = "01.2025"


\include "../_common/footers.ily"
\footer_common_with_pagenum 


% finetuning
\paper {
  system-system-spacing.padding = #4 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #10
  bottom-margin = #8
}

\header {
  title = \markup \caps  {"Hörst Du Mein Heimliches Rufen"}
  composer = "Gerald Plato (Musik), Erich Stöcklein (Text), 1940"
  
}

\markup \vspace #4 % space between header and score

global = {
  \key c \major
  \time 3/4
}

% -- data ------------------------------------------------

voice_vocal = \fixed c' {
  \clef "treble"
  e4 ( g c') | b (c' d') | c' e'2 ~2. |
  a4 (c' a) | f f a | g2. ~2. |
  a4 (~8 g f e) d2 a4 g4 (~8 f e d) c2 e4 
  d (g c') b b a g2. r8  \magnifyMusic #0.5 { f'8 d' b g f} \break
  
    e4 ( g c') | b (c' d') | c' e'2 ~2. |
  a4 (c' a) | f f a | g2. ~2. |\break
  a4 (~8 g f e) d2 a4 g4 (~8 f e d) c2.
  g4 (c'2) b4 (d'2) c'2.~2.

  \bar "|."
}

voice_second = \fixed c' {
  \clef "treble"
  e4 ( g c') | f4 r2 | e4 g2 ~2. |
  f2.  | f4 f a | e2. ~2. |
  f4 (~8 e d c) b,2 f4 e4 (~8 d c b,) c2 e4 
  d (g c') d d c b,2. r2 r4 \break
  
  e4 ( g c') | f2. | e4 g2 ~2. |
  f2.  | f4 f a | e2. ~2. |\break

  f4 (~8 e d c) b,2 f4 e4 (~8 d c b,) c2.  
  e2. f2. e2.~2.

  \bar "|."
}

voice_chords =  \chordmode { 
  c2. g c s f s c s
  d:m g c a:m g d:7 g g:7
  c2. g c s f s c s
    d:m g c a:m c g c s
    }
    
stanza_one = \lyricmode { 
  \set stanza = "1."
  Hörst4 Du mein heim -- lich -- es Ruf -- en2 ""2.
öf4 -- fne Dein Herz -- käm -- mer -- lein2. ""2.
Hast4.  Du8 heu -- te Nacht2 so4 lieb4. an8 mich ge -- dacht,2 
so4 werd ich im Traum bei Dir sein2. ""2.
Lass4 mich noch ein -- mal Dich seh -- en,2 ""2.
zeig4 mir Dein lie -- bes Ge -- sicht,2. ""2.
dann4. lösch8 aus das Licht,2 mein4 Herz4. ver8 -- gisst Dich nicht,2.
schla4 -- fe,2 schla4 -- fe2 ein.2. ""2.
}





\score {
<<
  \new ChordNames
     \transpose c g, 
     \voice_chords
    
  \new Staff \with {
    midiInstrument = "Acoustic Guitar (nylon)"
    instrumentName = "Vokal" } 
    { 
     \global
     \transpose c g, 
     \voice_vocal 

    }
    
  \new Lyrics { \stanza_one }

>>

\layout { }
\midi { \tempo 4=120 }
} 


\markup \vspace #2 % space between header and score

\score {

\header { piece =  "Zweite Stimme"}
  
<<
  \new ChordNames
     \transpose c g, 
     \voice_chords
    
  \new Staff \with {
    midiInstrument = "Acoustic Guitar (nylon)"
    instrumentName = "Violine" } 
    { 
     \global
     \transpose c g 
     \voice_second 

    }

>>

\layout { }
\midi { \tempo 4=120 }
} 
