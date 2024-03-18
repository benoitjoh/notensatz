% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"
\include "../_common/makros.ily"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 


\paper {
  %system-system-spacing.padding = #10 % spacer between the staff group
  system-system-spacing.basic-distance = #20
  ragged-last-bottom = ##t
  bottom-margin = 7
}

\include "music.ily"

\markup \vspace #0 % space between header and score

aaa = { d4 cis'8 d' d'4 8 8 c' b a   | c'  b   a gis gis f a  gis4 f8  e  | d4 e8 f  f  d a  gis4 f8 a   | gis4 f8 e d f d e4 e  |}
aat = { d4 e'8 f' f'4 8 8 es' d' c'  | es' d' c' b   b   a c' b4   as8 g  | f4 g8 as as f c' b4  as8 c'  | b4 as8 g f as f g4  g |}

bbb = { d4 e8 f  f  d a gis4 f8 e      | d4 d'8 8 8 c' b a gis f e        |    d4 e8 f f d a gis4 f8 a    | gis4 f8 e d f d e4 4}
bbt = { f4 g8 as as f c' b4  as8 g      | f4 f'8 8 8 es' d' c' b as g     |    f4 g8 as as f c' b4 as8 c' | b4 as8 g f as f g4 4}

\score 
{
%\unfoldRepeats{
  <<
  \new ChordNames {
      \chords_part_a   \chords_part_b   \chords_part_c  \chords_part_d \chords_part_e
    }

  \new Staff \with { instrumentName = "Vocal" }
    { \global 
      \fixed c' { \aaa} 
      \fixed c' { \bbb}
      \voice_part_c
      \voice_part_d
      \voice_part_e
    }
      \new Staff \with { instrumentName = "Vocal" }
    { \global 
      \fixed c' { \aat}
      \fixed c' { \bbt}
      \voice_part_c
      \voice_part_d
      \voice_part_e
    }
  \new Staff \with { instrumentName = \markup { \center-column { "Clarinet" \line { "in B" \tiny \flat } } } 
                     midiMaximumVolume = 0 %suppress midi 
                   }
    {  \global 
       \transpose d e {
      \voice_part_a  
      \voice_part_b
      \voice_part_c
      \voice_part_d
      \voice_part_e
       }
    }
  >>

%}
  \layout { }
  \midi { \tempo 4=80 }
}

