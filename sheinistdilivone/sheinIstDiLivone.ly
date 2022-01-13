\version "2.20.0"

\paper {
  system-system-spacing.padding = #5.5
  #(set-paper-size "a4")
}

\header {
  title = "Shein Vi Di Livone"
  composer = "Joseph Rumshinksy"
  copyright = ""
  arranger = " "
  meter = \markup \italic {""}
  tagline = \markup {
  \halign #-13  \abs-fontsize #8 \italic { "jb. / lilypond.org"  #(strftime "%d. %B %Y" (localtime (current-time)))}
  }
}

global = {
  \key d \minor
  \time 4/4
}

melodie = {
   d4 f e d g f2. d4 f e d g f2 f4 \break 
   f8 (a) g4 g g g2 g f8 e d4 g d f2. a,4 \break
   d4 f e d g f2 a,4 d f e d g f2 f4 \break
   f8 (a) g4 g g g2 g f8 e d4 g g d2. r4 \break
   g d bes8 a g4 g d bes8 a g4  r4 bes a g g bes a g \break
   f c a8 g f4 f c a8 g f4 r4 c'2 d'4 a g f e \break
   d f e d g f2. d4 f e d g f2 f4 \break
   f8 (a) g4 g g g2 g f8 e d4 g g d2. r4 \bar "|."
  }

 
akkorde = \chordmode { 
    d1:m s1 d1:m s1 g1:m s1 d2:m g2:m d1:m  
    d1:m s1 d1:m s1 g1:m s1 d2:m g2:m d1:m 
    g1:m g1:m c1 c1 f1 f1 a1 a1
    d1:m s1 d1:m s1 g1:m s1 d2:m g2:m d1:m
    }

% lyrics

stanza_one = \lyricmode 
{ 
  \set fontSize = #-2
  \set stanza = "1. "
  Shein4 vi di le -- vo -- ne2. lich4 -- tig vi di shte -- rn2 fun4 
  hi4 -- ml a ma -- to2 -- ne bis8 -- tu mir4 tzu -- ge -- shikt2. Mein4 
  glick hob ich ge -- vin -- en2 ven4 ich gob dich ge -- fin -- en2 du4 
  "scheinst __" vi toi -- znt zin2 -- en "host__"4 mein hartz ba -- glikt1 
  Dai4 -- ne tzen8 -- de -- lach4 vai -- se pe8 -- re -- lach4 " " mit4 dei -- ne schei -- ne oi -- gn
  dei -- ne cheyn8 -- de -- lach4 dei -- ne he8 -- re -- lach4 " " host2 mich4 tzu -- ge -- tzoi -- gn 
  shein vi di li -- vo -- ne2. lich4 -- tig vi di shte -- rn2 fun4
   hi4 -- mkl a4 ma -- to2 -- ne hos8 -- tu mich4 tzu -- ge -- shikt2.
  
}



\score {
<<
  \new ChordNames \with { 
    \override ChordName.font-size = #0
  }
  \akkorde

  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Vocal"
  } 
  { 
    \clef "treble" 
    \tempo "Moderato"
    \transpose c c'
    {
    \global
    \melodie
    }
  
  }
% textstrophen
  \new Lyrics \with {    
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before textlines
  }
  {
    \stanza_one
  }



>>



  \layout {
  }
  \midi {
    \tempo 4=150
  }
}
