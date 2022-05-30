\version "2.20.0"

piecename_footerline = "Ikarus Dream"
\include "../_common/footers.ily"
\footer_common_with_pagenum 
\include "../_common/makros.ily"

\header {
  title = \markup \caps  {"Ikarus Dream"}
  composer = "Quadro Nuevo"
  copyright = ""
  arranger = " "
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \time 2/4
}


voice_clarinet= \fixed c { 
  R2^"Intro" R2*14 
  % [A]
  r4. d8  d'2~^\box_a d'4.
 16 es'16 d'2~d'4. c'16 bes c'2~2~2
  r4. d8 d'2~d'4. 16 es'16 d'2~d'4. c'16 bes a2~2~2 
  r4. bes8 g2~ g4. c'8 a2~4. f'16  es' 
  d'2~2~2 
  r4. d8 \break
  %  [b]
  d'2~^\box_b d'4. 16 es'16 d'2~d'4. c'16 bes c'2~2~2
  r4. d8 d'2~d'4. 16 es'16 d'2~d'4. c'16 bes  a2~2~2 
  r4. bes8 g2~ g4. c'8 a2~4. f'16  es' 
  d'2~d'4. a'8 f'2~f'4. bes'8 
  g'2~g'4. es''16 d'' c''2~c''4 f''16 es'' f'' es''~ es''8 d''4. d''2~2~2
  \break
  R2^\box_c R2 R2
  r4.  g'32 f' g' es'~ es'4.~16 d'32 es' d'2~2~2 
  R2*4
  
  
}

voice_accordion= \fixed c { 
  R2*14 
  % [A]
  R2*26
  
  d''2~^\box_b d''4. 16 es''16 d''2~d''4. c''16 bes' c''2~2~2
  r4. d'8 d''2~d''4. 16 es''16 d''2~d''4. c''16 bes'  a'2~2~2   
  R2 
  r4. bes'8 g'2~ g'4. c''8 a'2~4. f''16  es''
  d''2~d''4. a''8 f''2~f''4. bes''8 
  g''2~g''4. es'''16 d''' c'''2~c'''4 r4 R2*2
  
   r4.  g''32 f'' g'' es''~ es''4.~16 d''32 es'' d''2~2~2 
   R2*3
   r4.  g''32 f'' g'' es''~ es''4.~16 d''32 es'' d''2~2~2

  
  
}

voice_chords = \chordmode { 
  s2 * 8 
  g8.:m g16:m s8 g8:m g2:m   g8.:m g16:m s8 g8:m g2:m
  \transpose g c {g8.:m g16:m s8 g8:m g2:m   g8.:m g16:m s8 g8:m g2:m}
  

}

ostinato_one_g = { g8._"*Gm" 16~ 8 d' g'8. 16~ g'8 d'  }
ostinato_two_g = {                                     g8._"Gm" 16~ 8 d' g'2 }

ostinato_one_es = { es8._"*Es" 16~ 8 es' g'8. 16~ g'8 es' }
ostinato_two_es = {                                      es8._"Es" 16~ 8 es' g'2 }


ostinato_one_f =  { f8._"*F" 16~ 8 c' g'8. 16~ g'8 c' }
ostinato_two_f = {                                       f8._"F" 16~ 8 c' g'2 }

ostinato_bass_g = { 
  g8. 16~ 8 d' g'8. 16~ g'8 d' g8. 16~ 8 d' g'4. d8
}

voice_ostinato = \fixed c { 
 %intro
 \repeat unfold 4 { \ostinato_one_g \ostinato_two_g }

 %[A] clarinet
 ^"(0:24) Cla 24T" 
 \ostinato_one_g \ostinato_two_g
 \ostinato_one_es \ostinato_two_es
 \ostinato_one_g \ostinato_two_g
 \ostinato_one_f \ostinato_two_f
 \ostinato_one_es \ostinato_two_f
 \ostinato_one_g \ostinato_two_g
 
 % [b]  Clarinet / Accordion duett 0:54
 ^" (0:54) Cla/Acc (32T)"
 \ostinato_one_g \ostinato_two_g
 \ostinato_one_es \ostinato_two_es
 \ostinato_one_g \ostinato_two_g
 \ostinato_one_f \ostinato_two_f
 \ostinato_one_es \ostinato_two_f
 \ostinato_one_g \ostinato_two_f
 \ostinato_one_es \ostinato_two_f
 \ostinato_one_g \ostinato_two_g

% [c] 1:40 Einwuerfe Cla/acc
 ^"(1:40) Einwuerfe Cla/Acc"
 \ostinato_one_g \ostinato_two_g % acc einwurf
 \ostinato_one_g \ostinato_two_g % cla einwurf
 \ostinato_one_g \ostinato_two_g % acc einwurf
 
 % [a] bass solo 2:00
 \break
 g_"jeweils Begleitung die 24 Takte aus dem A-Teil" 
 ^"(5.40) Cla Acc [C Teil] (12T)"
 ^"(4:53) Cla Acc [B Teil] (24T)"
 ^"(4:20) Piano Cla (24T)"
 ^"(3:45) Piano (24T)"
 ^"(3:09) Acc (24T)"
 ^"(2:32) Mandoline (24T)"
 ^"(2:00) Bass solo (24T)"
 g es' es' g g f f es' f g g \break
 
 ""^"(5.40) Cla Acc [C Teil] (12T)"
 ^"(4:53) Cla Acc [B Teil] (24T)"
 ^"Schluss: "
}

voice_basso = \fixed c, { 
 \repeat unfold 4 { \ostinato_bass_g }
 %[A]
 \ostinato_bass_g 
 \ostinato_one_es \ostinato_two_es
 \ostinato_one_g \ostinato_two_g
 \ostinato_one_f \ostinato_two_f
 \ostinato_one_es \ostinato_two_f
 \ostinato_one_g \ostinato_two_g


}



% -- container ---------------------------------------------
\score {
  <<
     
  \new Staff \with {
      midiInstrument = "clarinet"
      instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  }
    {
     \global
     \key a  \minor
     \clef "treble_8"
     \transpose g a, 
         \voice_clarinet
     \bar "|."
    }
    
     \new Staff \with {
      midiInstrument = "accordion"
      instrumentName = "Accordion" }
    {
     \global
     \key g \minor
     \clef "treble"
         \voice_accordion
     \bar "|."
    }
 
   \new ChordNames  { 
    \voice_chords     
     }
     
 \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = "Git/Bass" }
    {
     \global
       \key g \minor
       \clef "treble_8"

     \voice_ostinato
    }
    
%{  \new Staff \with {
      midiInstrument = "bassoon"
       instrumentName = "Basso" }
    {
     \global
       \key g \minor

     \clef bass
     \voice_basso
    }
%}
  
  >>
  \layout { }
  \midi { \tempo 4=80 }
}