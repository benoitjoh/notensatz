% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #5 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------

\include "music.ily"

\include "music_violin.ily"


voice_chords = \chordmode {
  f2:m s2 g2:m s2 f2:m s2 g2:7 c2:7 
  f2:m s2 g2:m s2 f2:m s2 g2:7 c2:7 
  f2:m s2 f2:m s2 f2:m s2 g2:7 c2:7 
  f2:m s2 f2:m s2 f2:m s2 g2:7 c2:7 
  c2:7 s2 f2:m s2 f2:m s2 g2:7 c2:7 
  f2:m s2 g2:7 c2:7 f2:m s2 g2:7 c2:7 
}

\include "music_clarinet.ily"
voice_vocal = \fixed c' { 
  %line1
  r2 r2 r2 r2 r2 r2 r2 r2 
  r2 r2 r2 r2 r2 r2 r2 r2 
  es'8 8 8 8 8d' c'4 c'8 8 8 8 8 b as4
  r8 as8 8 8 bes as as4 g8 f g g as g g 4
  f 8 8 g as g4 f8 r8 
  f 8 8 g as g4 f8 r8 
  f'16 es'16 8 es' d' d'8 c' c' bes ~bes8 as16 16 g8 8 g4 r4
  <e bes>2 ~<e bes>8 <e as> <e g> f
  r8 as16 16 8 8  bes as g f 
  f <as f'> <as es'> <as es'>
  <g d'> <as c'> <as c'>4 ~<as c'>8 <f g> <f g> <f g> <f as> <e g> ~<e g>4 
  r8 <as c'> <as c'> <as c'>  
  <as c'> <as c'>16 <as c'>16  <as c'>8 r8
  r8<g b> <g b>16 <g b>16  <g b>8 
  <as c'>4 <g c'>8 r8 
  r8 <as c'> <as c'> <as c'>  
  <g b> <g b f'>16 <g b f'>16  <g b f'>8 r8
  r8<g b> <g b d'>16 <g b d'>16  <g b d'>8 
   <as c' e'>4 <g c' e'>8 r8
 }
 
 stanza_one = \lyricmode { 
 "" 2*16 
 Me8 sem cho -- ra chav -- ar -- o,4  che8 -- lav rom4 maj8 -- la -- cho,4
 ""8 da8 -- le4 man8 -- da -- le4 e8 cho -- ra man as -- tar -- en4
 Kas8 me as -- tar -- av,2  me8 man8 -- de as -- av.2
 Sa8 -- mo jekh chaj ni man -- gel, voj4 man8 -- da nas -- hel.2
 }
 
 opa = \lyricmode {
  O2 ""8 opa tsu -- pa ""8 so16 te man8 -- da cha -- je mu8 -- ka,8
  Ti daj ka -- me -- rel ako ni che -- le.
 }
% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \voice_chords
    }
    
  \new Staff \with {instrumentName = "Violin" }
    {
     \global
     \key f \minor

     %\transpose es c
     \voice_violin
    }
    
  \new Staff \with {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } }
    {
     \global
     \key f \minor

     %\transpose es c 
     \voice_clarinet
    }
    
  \new Staff \with {instrumentName = "Vocal" }
    {
     \global
     \key f \minor

     %\transpose es c
     \voice_vocal
    }
    
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_one
      \opa
    }
    
    

  >>
  \layout { }
  \midi { \tempo 4=95 }
}