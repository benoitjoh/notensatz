\version "2.20.0"

stanza_one = \lyricmode { 
  \set stanza = "1."
  Shtil4. di8 Nakht8 is ois -- ge -- ster2 -- nt 
  un4. der8 frozt hat shtark ge -- brent2 4 tsi8 ge
  denks4 -- tu8 vi ikh hob dikh ge -- le2 -- rnt
  hal4 -- tn8 a shpa -- yer in di hen2 -- t.8 8 tsi ge
  hent
}

lyrics_tabloid = 
  \markup \fontsize #0 {
    \fill-line {
      \hspace #1
      \column {
        \line { \bold {2.} A moyd, a peltsl un a béret, }
        \line { un halt in hant fest a nagán, }
        \line { a moyd mit a sámetenem pónim, }
        \line { hit op dem sóynes karaván. }
      }
      \hspace #1
      \column  {
        \line { \bold {3.} Getsílt, geshósn un getrófn }
        \line { hot ir kléyninker pistóyl, }
        \line { an óyto a fúlinke mit vofn  }
        \line {farháltn hot zi mit eyn koyl. }
      }
      \hspace #1
      \column  {
        \line { \bold {4.} Far tog fun vald aroysgekrókhn }
        \line { mit shneygirlándn oyf di hor, }
        \line { gemútikt fun kléyninkn nitsókhn }
        \line { far úndzer náyem fráyen dor. }
     }
      \hspace #1
    }
  }
