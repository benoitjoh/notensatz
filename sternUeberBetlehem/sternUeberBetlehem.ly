\version "2.20.0"
piecename_footerline = "Stern über Betlehem"
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
  title = \markup \caps  {"Stern über Betlehem"}
  composer = ""
}

\markup \vspace #2 % space between header and score

global = {
  \key d \major
  \time 4/4
}

% -- data ------------------------------------------------

voice_vocal =  \transpose es d \fixed c' {
  \clef "treble"
  es f8 g f es c4 | es8 c es f ~f2 | \break
  es4 f8 g f es c4 | es8 c es bes ~bes2 | \break
  c'4 8 8 bes 8 8 4  | g8 8 8 f ~f2 | \break
  es4 f8 g f es c4 | es8 es c es ~es2  \break
  \bar "|."
}

voice_chords =  \chordmode { 
    d2 b:m e4.:m a2 s8
    d2 b:m g4. fis2:m s8
    g2 fis:m b4.:m g a4
    d2 b:m g4 a8 d2 s8
    }
    
stanza_one = \lyricmode { 
  \set stanza = "1."
  Stern4 ü8 -- ber Bet -- le -- hem,4 zeig8 uns den Weg,2 ""8
  führ4 uns8 zur Krip -- pe hin,4 zeig,8 wo sie steht,2 ""8
  leuch4 -- te8 du uns vo -- ran,4  bis8 wir dort sind,2 ""8 
  Stern4 ü8 -- ber Bet -- le -- hem,4 führ8 uns zum Kind!2 ""8
}


stanza_two = \lyricmode { 
  \set stanza = "2."
  Stern4 ü8 -- ber Bet -- le -- hem,4 nun8 bleibst du stehn,2 ""8
  und4 lässt8 uns al -- le das4 Wund8 -- der hier sehn,2 ""8
  das4 da8 ge -- sche -- hen, was4 nie8 -- mand ge -- dacht,2 ""8 
  Stern4 ü8 -- ber Bet -- le -- hem,4 in8 die -- ser Nacht.2 ""8
}

stanza_three = \lyricmode { 
  \set stanza = "3."
  Stern4 ü8 -- ber Bet -- le -- hem,4 wir8 wolln zum Ziel,2 ""8
  denn4 die8 -- ser ar -- me Stall4 birgt8 doch so viel!2 ""8
  Du4 hast8 uns her ge -- führt,4 wir8 dan -- ken Dir,2 ""8 
  Stern4 ü8 -- ber Bet -- le -- hem,4 wir8 sind bei dir.2 ""8
}
stanza_four = \lyricmode { 
  \set stanza = "4."
  Stern4 ü8 -- ber Bet -- le -- hem,4 kehrn8 wir zu -- rück,2 ""8
  steht4 noch8 dein hel -- ler Schein4 in8 uns -- erm Blick,2 ""8
  und4 was8 uns froh ge -- macht,4 tei8 -- len wir aus,2 ""8 
  Stern4 ü8 -- ber Bet -- le -- hem,4 schein8 auch im Haus!2 ""8
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
     \voice_vocal 
    }
    
    \new Staff \with {
    midiMaximumVolume =  0.5
    instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } } 
    { 
     \key e \major
     \transpose d e \voice_vocal 
    }
  
  \new Lyrics { \stanza_one }
  \new Lyrics { \stanza_two}
  \new Lyrics { \stanza_three }
  \new Lyrics { \stanza_four }

>>

\layout { }
\midi { \tempo 4=120 }
} 


