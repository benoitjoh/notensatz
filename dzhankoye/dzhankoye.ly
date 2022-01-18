\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #3 % spacer between the staff group
  #(set-paper-size "a4")
}
\header {
  title = "Dzhankoye"
  composer = "traditionel"
  copyright = ""
  arranger = \markup \italic "(around 1925)"
  meter = \markup \italic {""}
  tagline = \markup {
  \halign #-13  \abs-fontsize #8 \italic { "jb. / lilypond.org"  #(strftime "%d. %B %Y" (localtime (current-time)))}
  }
}

\markup \vspace #0 % space between header and score

global = {
  \key d \minor
  \time 4/4
}

% -- data ------------------------------------------------

melodie = {
   d8 d d f a a a f g g g e f f e d\break 
   f f e f g (g) f (e) d2. r8 d8 \break
   d8 d d f a a a f g g g e f f e d \break
   f f e f g4 f4 d2. r4 \break
   g8 r g r c' c' c' bes a f f a c' bes a g  \break
   d f e f g-. r e-. r a r r4 r2 \break
   g8 r g r c' c' c' bes a f f a c' bes a g \break
   d f e f g r e r d2. r8 d8 
   
   \bar "|."
  }

 
akkorde = \chordmode { 
    d2:m d2:m g2:m d2:m
    d2:m g4:m a4:7 d2.:m a4:7
    d2:m d2:m g2:m d2:m
    d2:m g4:m a4:7 d2.:m a4:7
    g2:m c2 f2 a2:7
    d2:m g4:m a4:7 d1:m
    g2:m c2 f2 a2:7
    d2:m g4:m a4:7 d1:m
    }

% lyrics

stanza_one = \lyricmode 
{ 
  \set fontSize = #-1
  \set stanza = "1."
  Az8 men fort keyn Sé -- vas -- top -- ol iz nit vayt fun Sím -- fer -- op -- ol 
  \set stanza = "1."
  Dor -- tn iz a stan -- tzi -- ye far -- an1
  \set stanza = "1."
  Ver8 darf zu -- khn na -- ye gli -- kn? S'iz a stan -- tziye an an -- ti -- kl 
  \set stanza = "1."
  In Dzhan -- ko -- ye, dzahn,4 dzahn,4 dzahn1
  %REFRAIN
  \set stanza = "Ref."
  Hey4 dzhan,4 Hey8 Dzhan -- ko -- ye Hey8 Dzhan -- vi -- li Hey8 Dzhan -- ko -- ye
  Hey8 Dzhan -- ko -- ye dzahn,4 dzahn,4 dzahn1
  Hey4 dzhan,4 Hey8 Dzhan -- ko -- ye Hey8 Dzhan -- vi -- li Hey8 Dzhan -- ko -- ye
  Hey8 Dzhan -- ko -- ye dzahn,4 dzahn,4 dzahn1
}
stanza_two = \lyricmode 
{ 
  \set fontSize = #-1
  \set stanza = "2."
  En8 -- fert yi -- dn oyf8 mayn ka -- she Vu'z mayn bru -- der, vu'z A -- bra -- she
  \set stanza = "2." 
  S'geyt by im der trak -- tor vi a ban2. 8 \set stanza = "2." Di8
  \set stanza = "2." 
  mu -- me Ley bay der ko -- sil -- ke Bey -- le bay der mo -- lo -- til -- ke
  \set stanza = "2." 
  In Dzhan -- ko -- ye, dzahn,4 dzahn,4 dzahn1
   1 1 1 1 1 1 1 2 4 8 \set stanza = "3." Ver
}
stanza_three = \lyricmode 
{ 
  \set fontSize = #-1
  \set stanza = "3."
  zogt8 as yi -- dn konen8 nor hand -- len Es -- n fe -- te yoykh mit mand -- len 
  \set stanza = "3."
  Nor nit zyyn keyn ar4 -- bets4 -- man2. 8 \set stanza = "3." Dos
  \set stanza = "3."
  ken -- en zog -- en nor di son -- im! yi -- dn, shpayt zey on in po -- nim!
  \set stanza = "3."
  Tut a kuk oyf  dzahn,4 dzahn,4 dzahn1
  %In Dzhan -- ko -- ye, dzahn,4 dzahn,4 dzahn1
}
% -- container ------------------------------------------------

\score {
<<
  \new ChordNames \with { 
    \override ChordName.font-size = #+0
  }
  \akkorde

  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Vocal"
  } 
  { 
    \clef "treble" 
    \tempo "Presto"
    \transpose c c'
    {
    \global
    \melodie
    }
  
  }
% textstrophen ----------------------
  \new Lyrics \with {    
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.3  %spacer before first textlines
  }
  {
    \stanza_one
  }
  \new Lyrics  {
    \stanza_two
  }
  \new Lyrics  {
    \stanza_three
  }
>>

  \layout {
  }
  \midi {
    \tempo 4=120
  }
}
