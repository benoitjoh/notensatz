% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "ikh Hob Dik.."
version_date = "10.2024"
\include "../_common/footers.ily"
\include "../_common/makros.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #5
  %systems-per-page = 6  % force nr. of systems
  }

\header {
  title = \markup \caps  {"Ikh Hob Dikh Zufil Lib"}
  composer = "Traditional"
  copyright = ""
  arranger = ""
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key c \minor
  \time 4/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
    \set Score.markFormatter = #format-mark-box-alphabet

}

voice_vocal_stanza =  \fixed c' { 
  \mark #1
  r4 r8 g,8 g8 f r8 es16 d | f1 |
  r4 r8 g,8 f8 es r8 d16 c | es1 |
  r4 r8 g,8 es8 d r8 c16 b, | d1 |
  r4 r8 g,8 d8 d r8 d16 c | c8 g8~2. | \break
  
  r4 r8 g,8 g8 f r8 es16 d | f1 |
  r4 r8 f8 f8 es r8 d16 c | es1 | \break
  r4 r8 es8 es4 c | d2. r8 g,8| 
  d2. r8 d8| es4 b, c8 g4.~g1 | \break

}

voice_refrain =  \fixed c' {
  \mark #2
  r4 c d es | f f8 f2 f8 | g8  f4. es4 f| as g8 g2 f8  | g2. g4  \break
  a4 a a a b a g a c'  b b bes b1 \break

}

chords_stanza = \chordmode { 
  s1 f1:m g:7 c:m s g:7 s c:m 
  s1 f1:m g:7 c:m s g s s2 c:m s1
}
chords_refrain = \chordmode {  
  s bes bes es s a a g g:7
 }
stanza_one = \lyricmode {
  \set stanza = "1. " 
  \align_syllables_left
  ""4. Ikh8 hob dikh4 tsu16 -- fil lib,1
  ""4. ikh8 trog oyf4 dir16 kayn kas,1  
  ""4. Ikh8 hob dikh4 tsu16 -- fil lib,1
  ""4. zu8 sajn oyf4 dir16 in kas.1
  
  ""4. Ikh8 hob dikh4 tsu16 -- fil lib,1
  ""4. su8 zayn oyf4 dir16 gor beyz,1
  
  ""4. a8 nar4 ikh heyz,2.. ikh8 veyz,2.. ikh8
  hob4 dikh lib.1.
  
  \set stanza = "bridge "
  ""4 Per -- haps I hold your hand too tigh8 -- tly4. 
  but2 who4 am8 I2 to8 say2. 
  if4 I  should hold it ligh -- tly2 it4 might so2. -- bray1
} 


stanza_two = \lyricmode {   
    \set stanza = "2. "
    \align_syllables_left
    ""4.  I8 love you4 much16 too much,1 
    ""4.  I’ve8 known it4 from16 the start,1 
    ""4.  And8 then my4 love16 is such,1
    ""4.  I8 can’t be4 -- tray16 my heart.1
    ""4.  I8 love you4 much16 too much.1
    ""4.  I8 ask my4 -- self16. what16 for.1
    ""4.  Then8 dar -- ling4 when16 we touch1
    ""2..    I8 love4 you more1.
    
    } 
    
stanza_three = \lyricmode {   
    \set stanza = "3. "
    \align_syllables_left
    
    } 
    


% -- container ---------------------------------------------


\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #-1
      \chords_stanza
      \chords_refrain
    }
    
  \new Staff \with {instrumentName = "Vocal" }
    {
      \global 
      \voice_vocal_stanza 
      \voice_refrain  
    }
   
  \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1  %spacer before textlines
      }
    \stanza_one 
    
  \new Lyrics 
    \stanza_two
  \new Lyrics 
    \stanza_three
  
  >>
  \layout { }
  \midi { \tempo 4=120 }
}