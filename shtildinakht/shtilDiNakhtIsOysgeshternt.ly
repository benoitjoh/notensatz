\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 


\paper {
  system-system-spacing.padding = #1
  #(set-paper-size "a4")
}

\header {
  title = \markup \caps  {"Shtil di Nakht is oysgeshternt"}
  composer = "Hirsh Glick (1942)"
}

global = {
  \key c \minor
  \time 2/4
}

% -- data ------------------------------------------------

melodie = {
  g4. es8 as g f es f4. es16 d es4. r8
  \break
  bes4. g8 c' bes es f g2~ g8 r8 g g
  \break
  
  \repeat volta 2 {
  c'4  bes8 c' as as g c f4. es16 d es4. r8
  \break
  d4 g8 g bes as g f 
  }
  \alternative {
     { c'2~ c'8 r g  g }
     { c4 r4 \bar "|."  }
    }
   
}

clarinet = {
  c4. c8 d2 d2 es
  g4. es8  as8 g es f g2 r 
  \repeat volta 2 {
    es2 c  d  g  
    bes,4 r c4 g 
  }
  \alternative {
     { c2~ | c8 r es,  es }
     {es2}
    }  
  
}


akkordeon = {
  <c es g c'>4 r   <f, c' f as> r  <bes, d f bes> r  <bes, es g bes> r
  <bes, es g bes> r <as, c es as> r <bes, es g bes> r r2
  \repeat volta 2 {
    <c es g c'>4 r <f, c f as> r  <bes, d f bes> r <es g bes> r 
    <g, bes, d g> r <f, c' f as>4 <g, bes d f g> 
  }
  \alternative {
     {<c es g c'>2~  | <c es g c'>4 r  }
     {<c, es g c>2}
    }  
  
}

words = \lyricmode { 
  \set stanza = "1."
  Shtil4. di8 Nakht8 is ois -- ge -- ster2 -- nt 
  un4. der8 frozt hat shtark ge -- brent2 4 tsi8 ge
  denks4 -- tu8 vi ikh hob dikh ge -- le2 -- rnt
  hal4 -- tn8 a shpa -- yer in di hen2 -- t.8 8 tsi ge
  hent
}

akkorde = \chordmode { 
    c2:m f:m bes es es as es es  c:m f:m bes es g f4:m g4:7 c1:m c2:m 
    }



% -- container ---------------------------------------------


\markup \vspace #2 % space between header and score

\score {
  
%MIDION%  \unfoldRepeats { %directive do this only on midigenreration

<<
  
  \new ChordNames
    \akkorde
    
  \new Staff \with {
    midiInstrument = "Violin"
    instrumentName = "Vocal"
    } 
    { 
    \clef "treble"
    \transpose c c'
    {
    \global
    \melodie
    }  
  }
  
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \words
    }

  \new Staff \with {
    midiInstrument = "Clarinet"
    instrumentName = "Clarinet (B)"
  } { 
    \clef "treble"
       \transpose c c'
       \transpose c b  %MIDIOFF% % directive to do not do this on midi generation!
     {
    \global
    \clarinet
    }  
  }

  \new Staff \with {
    midiInstrument = "Acoustic Grand"
    instrumentName = "Akkordeon"
  } { 
    \clef "bass"
    {
    \global
    \akkordeon
    }  
  }
>>
%MIDION% } % directive do this only on midigenreration



\layout { }
  \midi {
    \tempo 4=100
  }
} % score

\markup \vspace #1 % space score and table

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
