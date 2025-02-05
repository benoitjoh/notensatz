% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #5 % spacer between the staff group
  %last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------
\include "music.ily"

voc_phrase_one = {
  f8 8 8 8 g8 8 f4 a8 8 8 fis d d a,4 bes, \triole{a,8 bes, c} \break
  d8 d e d a, a,4. 
}

voice_vocal_a = \fixed c'' { 
  %\set Score.currentBarNumber = #1
  \clef violin
  r2^"12T" f8 8 8 8 g8 8 f4 a8 8 8 fis d d a,4 bes, \triole{a,8 bes, c} \break
  d8 d e d a, a,4.
  
  r2 f8 f g f d d bes,4 d8 d e d \break
  a, a, f,4g, \triole{g, 8 a, bes,} c8 a, e,8. cis,16 d,8 d,4. r2 f4 f \break
  g8 g f4 a16 a a4 f8 d d a,4 bes, \triole{a,8 bes, c} d8 d e d cis cis4. \break
  r4 e4 f4 g8 (f) d d bes,4 d8 d e d a, a, f,4 g, r16 a, bes, b, \break
  c8 a, e,8. cis,16 d,8 4. r2 r2^"32T" 
  f8 8 8 8 g8 8 f4 a8 8 8 fis d d a,4 \break 
  bes, \triole{a,8 bes, c} 
  d8 d e d a, a,4.
  r4 f4 f8 f g f d d bes,4 d8 d e d \break
  a,8 a, f,4 g, r16 g,a,bes, c8  a, e,8. cis,16 d,8 d,4. r2  f16 f8. f8 g \break
  g8 g f4 a8. 16 a8 f d d a,4 bes, \triole{bes,8 8 c} d8 d e d cis cis4.\break
  r2 f8 f g f d d bes,4 d8 d e d a, a, f,4 g,4  r16 a, bes, b,\break
  c8 a, e,8. cis,16 d,8 4. r2 r2 r2 r2 r2^"41T"\break
  f8 r r f8 g g f4 \triole{a8 a4} a8 f d d a,4 bes, \triole{a,8 bes, c} d8 d e d \break
  a,8 a,4.  r2 f4. f8 d d bes,4 \triole{d8 d4} e8 d a, a, f,4 \break
  g,4 \triole{g,8 a, bes,} c8 a, e,8. cis,16 d,8 d,4. r2 f16 f f4 f8 \break
  g8 g f4 a8 a a f d d a,4 bes, \triole{bes,8 8 c} d8 d e d cis cis 4. r2 \break
  f8 f g f d d bes,4 d8 d e d a, a, f,4\fermata g,\fermata 
    f,16 g, a, c a,4\fermata r8 cis,16 16 d,2\fermata \bar "."
}

voice_chords_a = \chordmode {
   s2 
   d2:m s d:7 s g:m s a:7  s d:m s2 c2 f g:m a:7 d:m s
   d:m s  d:m7 s g:m s a:7 s d:m  
}

stanza_one = \lyricmode {
  ""2 A8 -- ma -- ri szi, a -- ma -- ri,4 a8 -- ma -- ri ci -- ni bó -- ri4
Aj,4 la  -- la -- la -- la -- la la la la laj.
  
}
% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \transpose f bes,
      \voice_chords_a
    }
    
  \new Staff \with {instrumentName = "Violin"
                    midiInstrument = "acoustic guitar (nylon)" }
    {
     \global
     \key g \minor

     \transpose f bes,
     \voice_vocal_a
    }
    
    \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0.8  %spacer before textlines
      }
      \stanza_one

  >>
  \layout { }
  \midi { \tempo 4=90 }
}
