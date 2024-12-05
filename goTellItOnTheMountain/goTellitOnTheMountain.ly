\version "2.20.0"
piecename_footerline = "Go Tell It"
version_date = "12.2024"


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
  title = \markup \caps  {"Go Tell It On The Mountain"}
  composer = ""
}

\markup \vspace #3 % space between header and score

global = {
  \key f \major
  \time 4/4
}

% -- data ------------------------------------------------

voice_refrain =  \fixed c' {
  \clef "treble"
  a2 a8. g16 f8. d16 | c2 f | g8 g4 f8 g4 f | a8 (g) f4 d8 (c4.)| \break
  a2 a8. g16 f8. d16 | c2 f4 bes | a8 a4. g8. (f16) g4 | f2.^\markup \italic "Fine" f4 |\break
  \bar "."
}
voice_vocal =  \fixed c' {
  a4 c' c'4. d'8 | c'4 a2 f4 | g4 g f g a2. f4 |\break
  a4 c' c'4. d'8 | c'4 a2 f4 | g4 g f d c2 (bes2)^\markup \italic "D.C. al Fine" |
  \bar "."
}

voice_chords =  \chordmode { 
  f 2 bes f1 c2 c:7 f bes8 c4.:7
  f 2 bes f2. bes4 f2 c:7 f1
  f2 bes f1 c1 f1 
  f2 bes f1 g:7 c:7
  
    }
    
refrain = \lyricmode { 
  \set stanza = "Ref."
  Go2 tell8. it16 to8. the16 mount2 -- tain2 o8 -- ver4 the8 hill4 and ev4 -- ry ""8 where;4.
  Go2 tell8. it16 to8. the16 mount2 -- tain4 that Je -- sus Christ is born2. 
}

stanza_one = \lyricmode { 
  \set stanza = "1."
  While4 shep -- herds kept4. their8 watch4 -- ing2 ove'r4 si -- lent flocks by night,2. be4 -- 
  hold  throught -- out4. the8 heav4 -- ens2 there4 shone4 a ho -- ly ""4 "light.______"2. 
}


stanza_two = \lyricmode { 
  ""1*7 ""2.
  \set stanza = "2."
  The4 shep -- herds feared4. and8 tremb4 -- led,2 when4 lo! Ab -- ove the earth2. Rang4 
  out the ang4. -- els'8 chor4 -- us2 that4 hailed the Sav -- ior's ""4 "birth.______"2. 

}

stanza_three = \lyricmode { 
  ""1*7 ""2.
  \set stanza = "3."
  And4 Io! When they4. had8 heard4 it,2 they4 all bowed down to pray,2. then4 
  trav4 -- elled on4. to8 -- geth4 -- er,2 to4 where the Ba -- by  ""4 "lay.______"2. 
}
stanza_four = \lyricmode { 
  ""1*7 ""2.
  \set stanza = "4."
  Down4 in a low4. -- ly8 mang4 -- er2 the4 hum -- ble Christ was born2. and4
  God sent us4. sal8 -- va4 -- tion2 that4 "    blessed__"2 Christ4 -- mas ""4 "morn.______"2. 
}

stanza_five = \lyricmode { 
  ""1*7 ""2.
  \set stanza = "5."
  I4 too am like4. a8 shep4 -- herd,2 my4 flock of days to guard,2. each4
  day finds time4. for8 pray4 -- ing,2 from4 this I won't  re -- ""4 " tard.______"2. 
}
\score {
<<
  \new ChordNames
    \voice_chords
    
  \new Staff \with {
    midiInstrument = "Acoustic Guitar (nylon)"
    instrumentName = "Vocal" } 
    { 
     \global
     \voice_refrain
     \voice_vocal
    }
    
    \new Staff \with {
    midiMaximumVolume =  0
    instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } } 
    { 
     \key g \major
     \transpose d e {
       \voice_refrain
       \voice_vocal 
     }
    }
  
  \new Lyrics { \refrain \stanza_one }
  \new Lyrics { \stanza_two}
  \new Lyrics { \stanza_three }
  \new Lyrics { \stanza_four }
  \new Lyrics { \stanza_five }

>>

\layout { }
\midi { \tempo 4=120 }
} 


