% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\include "../_common/makros.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #5
  %systems-per-page = 6  % force nr. of systems
  }


\include "music.ily"

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------


stanza_one = \lyricmode {
  \set stanza = "1. " 
  \align_syllables_left
  ""4. Ikh8 hob dikh4 tsu16 -- fil lib,1
  ""4. zu8 sajn oyf4 dir16 in kas.1
  ""4. Ikh8 hob dikh4 tsu16 -- fil lib,1
  ""4. ikh8 trog oyf4 dir16 kayn kas,1  
 
  ""4. Ikh8 hob dikh4 tsu16 -- fil lib,1
  ""4. su8 zayn oyf4 dir16 gor beyz,1
  
  ""4. a8 nar4 ikh heyz,2.. ikh8 veyz,2.. ikh8
  hob4 dikh lib.1.
  
} 

bridge_one = \lyricmode { 
  \set stanza = "br. "
  ""4 Per -- haps I hold your8 hand2 too8 tigh8 -- tly4. 
  ""4 but4 who4 am8 I2 to8 say2. 
  if4 I  should hold it ligh -- tly2 it4 might sur2. -- vive1
} 


stanza_two = \lyricmode {   
    \set stanza = "2. "
    \align_syllables_left
    ""4.  I8 love you4 much16 too much,1 
    ""4.  I’ve8 known it4 from16 the start,1 
    ""4.  And8 then my4 love16 is such,1
    ""4.  I8 can’t be4 -- tray16 my heart.1
    ""4.  I8 love you4 much16 too much.1
    ""4.  I8 ask my4 -- self16 what16 for.1
    ""4.  Then8 dar -- ling4 when16 we touch1
    ""2..    I8 love4 you more1.
    
    } 
    
bridge_two = \lyricmode { 
  %\set stanza = "b"
  \align_syllables_left
  ""4  Kh´hob4 dir mayn lebn 2. avek8 -- ge -- ge8 -- bn,4. ""4 
   mayn4 harts, in4 may4 -- ne8 ne8 -- sho8 -- me,2 ""8 ikh bin 
   krank,2. nor8 mayn gedank,1
   trakht4 nit2 der8 ne -- ko -- me.2. ""8
}     
stanza_three = \lyricmode {   
    \set stanza = "3. "
    \align_syllables_left
    
    } 
    


% -- container ---------------------------------------------


\score {
  <<
    \new ChordNames \with {midiInstrument = "acoustic grand"} {
      \override ChordName.font-size = #1
      \transpose f f, {
      \chords_stanza
      \chords_refrain
      }
    }
    
  \new Staff \with {instrumentName = "Vocal" midiInstrument = "electric piano 1"}
    {
      \global 
      \voice_vocal_stanza 
      \voice_refrain  
    }
   
  \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1  %spacer before textlines
      }
    {  
    \stanza_one 
    \bridge_one
    }
    
  \new Lyrics  \with {    
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1  %spacer before textlines
      }
    {  
    \stanza_two
    \bridge_two
    }
    
    
  \new Lyrics 
    \stanza_three
  
  >>
  \layout { }
  \midi { \tempo 4=120 }
}