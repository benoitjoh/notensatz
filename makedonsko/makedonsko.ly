% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Makedonsko"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\header {
  title = \markup \caps  {"Makedonsko Devoje"}
  composer = "Jonce Christowski (1964)"
  copyright = ""
  arranger = " "
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key g \minor
  \time 7/8
}

voice_chords = \chordmode {
  g2..:m s2.. c2..:m  g2..:m
  g2..:m s2.. d2..:7  g2..:m
  g2..:m c2..:m f2..  bes2..
  as2.. g2..:m d2..:7  g2..:m
  
}
voice_vocal = \fixed c' { 
  g4^"Strophe" g'8 f'4 g' f' g'8 d'8~4. es'4 d'8 c'4 es'4 d'2.. \break
  g4 g'8 f'4 g' f' g'8 d'8~4. d'4 c'8 bes4 a4 g2.. \break
}

voice_ref_a_one = \fixed c' { 
  \repeat volta 2 { g'4.^"Refrain" d'4 (f'4) es'4 (d'8) c'4. 8 
  es'4 d'8 c'4 es'4 d'2.. \break
  es'4 d'8 c'4 es'4 d'8 c'4 bes4 (c'4) 
  d'4 c'8 bes4 a g2..}
}

voice_ref_a_two = {
}

stanza_one = \lyricmode 
  {\set fontSize = #-1 
   \set stanza = "1." 
   Ma4 -- ke8 -- don4 -- sko de -- voj8 -- ce,2  
   kit4 -- ka8 sha4 -- re4 -- na,2.. 
   Vo4 gra8 -- di4 -- na4 na4 -- bra8 -- na,2
   dar4 po8 -- da4 -- re -- na.2.. 
   \set stanza = "Ref." 
   Da4. -- li2 i4. -- ma4. Na8 o4 -- voj8 be4 -- li4 svet,2.. 
   Po4 -- u8 -- ba4 -- vo4 de8 -- voj4 -- ce2 od4 Ma8 -- ke4 -- don4 -- ce2..
  }

stanza_two = \lyricmode 
  {\set fontSize = #-1 
   \set stanza = "2." 
   Ne4 -- ma8 -- dzve4 -- di po -- lic8 -- ni,2  
   od4 tvo8 -- je4  o4 -- ci,2.. 
   Da4 se8 nok4 -- je4 na4 ne8 -- bo,2
   den4 kje8 raz4 -- de -- ni.2.. 
   %\set stanza = "Ref." 
   Ne4. -- ma2 ne4. -- ma2 Ne4 -- ke8 se4 ro4 -- di,2.. 
   Po4 -- u8 -- ba4 -- vo4 de8 -- voj4 -- ce2 od4 Ma8 -- ke4 -- don4 -- ce2..
  }
  
stanza_three = \lyricmode 
  {\set fontSize = #-1 
   \set stanza = "3." 
   Ko4 -- g8   ko4 -- si ras -- ple8 -- te,2  
   ka4 -- ko8 ko4 -- pri4 -- na,2.. 
   Lic4 -- na8 e4  i4 po4 lic8 -- na,2
   od4 sa8 -- mo4 -- vi -- la.2.. 
  }
stanza_four = \lyricmode 
  {\set fontSize = #-1 
   \set stanza = "4." 
   Ko4 -- ga8 pes4 -- na za -- pe8 -- e,2  
   sla4 -- vej8 nad4  pe4 -- e,2.. 
   Ko4 -- ga8 o4 -- ro4 za4 -- i8 -- gra,2
   Sr4 -- ce8 ra4 -- zi -- gra.2.. 
  }
% -- container ---------------------------------------------
\score {
  <<
  \new ChordNames {
    \voice_chords
  }
  \new Staff 
    {
     \global
     \voice_vocal
     \voice_ref_a_one
    }
   
  \new Lyrics 
    \stanza_one
  \new Lyrics 
    \stanza_two
  \new Lyrics 
    \stanza_three
  \new Lyrics 
    \stanza_four
  
  >>
  \layout { }
  \midi { \tempo 4=140 }
}