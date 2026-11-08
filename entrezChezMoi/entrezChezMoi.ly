% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\include "../_common/makros.ily"
\footer_common_with_pagenum

\paper {
  system-system-spacing.padding = #2
  %systems-per-page = 6  % force nr. of systems
  }

\include "music.ily"
\include "lyrics.ily"

vocal_refrain =  \fixed c' {
  \mark #1
  r1 | a2 g4. f8 g2. c4 c'4 bes a g a g f g  | a2 f4 e |  d2 d8 f4 d16 d e1 |
  r1 | r8 a4. g4. f8 g2. c4 |  c'8 c'4. c'4 bes4 bes4 a8 g8 f4 g4 | a2 f4 e d2 d8 f4 d8 e1| \break
}

voice_stanza =  \fixed c' {
  \mark #2
  r2. a8 a | g8 g4. a4 f | e2. e8 e8 |  bes8 c'4. a4 f e2. r8 e8 |g8 g4. a4 bes| e4 e  e e | f1 | \break
  r2. a8 a | g8 g4. a4 f | e2. e8 e8 |  bes8 c'4. a4 f e2.  g8 g8 | g8 g4. a4 bes| c'4 bes a g | a1 | \break
  }
voice_bridge =  \fixed c' {
  \mark #3
  r2. a4 | bes4 bes r c' | d' d' c' bes | a4 r a g a2. r4 | r2. g8 g | g4 c'2 bes4 | a4 a r2 | \break
  r2. a4 | bes4 bes r c' | d' d' c' bes | a4 r a g a2. r4 | r2. f4 | g2. r8 g8 | g4 g  c'4 bes | a1 | \break

  }

voice_stanza_three_four =  \fixed c' {
  \mark #4
  r2 a4 a | g2 g4 g4 | g2 a4 bes4 | e2 4 4 | e2 a4 a | g2 g4 g4 | g2 a4 bes4 | e2 4 4  \break
  e2 a4 a | g2 g4 g4 | g2 a4 bes4 | e2 4 4 | e2 e4 e | f2^"(A)" r2 | r8 a8 a4 a4 g4 | a1 \break
  }


chords_refrain = \chordmode {
  s1 d1:m g:m c a d:m g:m a
  s1 d1:m g:m c a d:m g:m a
}
chords_stanza = \chordmode {
  s1 g1:m c g:m c g:m c d:m
  s1 g1:m c g:m c g:m c a
}
chords_bridge = \chordmode {
  s1 bes1 s d:m s g:m s a
  s1 bes1 s d:m s g:m s s a
}

chords_stanza_three_four = \chordmode {
  s1 g1:m s c s g:m s c
  s1 g1:m s c s d:m s s
}

text_font = \set fontSize = #-2

refrain = \lyricmode {
  \set stanza = "Ref."
  \text_font
  " "1 Ent2 -- re4. chez8 moi2. ma4 mai -- son est la tienne et mon pa -- ys,2 mon4 pa -- ys2 est8 aus4 -- i16 à16 toi1
  " "1 Ent2 -- re4. chez8 moi2. mi4 ca -- sa es su ca -- sa8 et mon4 pa -- ys,2 mon4 pa -- ys2 tu8 doit4 -- bien8 ca.1


}
stanza_one = \lyricmode {
  \set stanza = "1. "
  \text_font
  %\align_syllables_left
  ""2. Toi8 le8 clan8 -- de4. -- tin4 ca4 -- ché,2. toi8 le8 va8 -- ga4. -- bond4 per4 -- du2.
  toi8 le8 dé8 -- ser4. -- teur4 chas4 -- sé,4 ent -- re chez moi.1
  ""2. toi8 le8 mar8 -- gi4. -- nal4 mas4 -- qué,2. toi8 le8  ma8 -- qui4. -- sard4 dé4 -- chu,2.
  toi8 le8  re4 -- belle re -- je -- té, ent -- re chez moi.1

}

stanza_two = \lyricmode {
  ""1 * 16
  \set stanza = "2. "
  \text_font
  %\align_syllables_left
  ""2. Toi8 le8 pen8 -- seur4. -- ren4 --  fer4 -- mé,2. toi8 le8 po8 -- et4. -- e4   mau4 -- dit2.
  ""8  toi8 l'ar8 -- tist4. cen4 -- su -- ré4 ent4 -- re chez moi.1
  ""2. ""8 toi8 l'hé8 -- ré4. -- tique4  ban4 -- ni2.  toi8 le8  me8 -- tèque4. -- de4 la4 -- rue,2.
  toi8 le8  ré4 -- fu -- gié qui fuit, ent -- re chez moi.1

}


stanza_three = \lyricmode {
  \set stanza = "3. "
  \text_font
  %\align_syllables_left
  ""2 Toi4 qui4 fuis2 ton4 pa4 -- ys,2  que4 mes  pères2 ont4 pli4 -- é2
   que4 mes4 pères2 ont4 meur4 -- tri,2  toi4 qui4 fuis2 mon4 pas4 --  sé,2
  Toi4 qui4 quit2 -- tes4 ta4 terre2 par4 la4 mer2 in4 -- con4 -- nue,2
  toi4 qui4 ne1
  ""8 te8 re4 --  tourn4 -- es4 plus.1

}

stanza_four = \lyricmode {
  ""1 * 17

  \set stanza = "4. "
  \text_font
  %\align_syllables_left
  ""2 Toi4 qui4 lais2 -- ses4 fa4 -- mille2 et__2 rac2 -- ines4 en4 fait,2
   toi4 qui4 n'as2 rien4 à perd re, toi qui n'as2 que4 tes yeux,2
   ""4 pour pleu2 -- rer4 le sort4 de4 tes4 en4 -- fants,2 de4 tes4 femmes2 et4 de4
   ""8 ton1 ""4 pa4 -- ys4 en4 flammes.1

}

bridge = \lyricmode {
  \set stanza = "Bridge "
  \text_font
  %\align_syllables_left
  ""2. Et4 lais -- se "" la port -- e grand ou -- verte "" der -- rière toi,1
    ""2. que8 les fron4 -- tières2 suc4 -- comb -- ent ""2
    ""2. Et4 lais -- se "" la port -- e grand ou -- verte "" der -- rière toi,1
    ""2. j'at4 -- tends2. ""8 tout8 le4 mon4 -- de4 chez4 moi1

}


% -- container ---------------------------------------------


\score {
  <<
    \new ChordNames \with {midiInstrument = "acoustic grand"} {
      \override ChordName.font-size = #1
      \transpose f f, {
      \chords_refrain
      \chords_stanza
      \chords_bridge
      \chords_stanza_three_four
       }
    }

  \new Staff \with {instrumentName = "Vocal" midiInstrument = "electric piano 1"}
    {
      \global
      {
      \vocal_refrain
      \voice_stanza
      \voice_bridge
      \voice_stanza_three_four
      }
    }


  \new Lyrics \with {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before textlines
      }
    {
    \refrain
    \stanza_one
    \bridge
    \stanza_three
    }

  \new Lyrics \with {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before textlines
      }
    {
    \stanza_two
    \stanza_four
    }


  >>
  \layout { }
  \midi { \tempo 2=120 }
}