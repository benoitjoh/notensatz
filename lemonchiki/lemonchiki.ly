% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Lemonchiki"
version_date = "10.2022"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #5
  %systems-per-page = 6  % force nr. of systems
  }

\header {
  title = \markup \caps  {"Lemonchiki"}
  composer = "Amsterdam Klezmer Band (2001)"
  copyright = ""
  arranger = ""
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key c \major
  \time 4/4
}

d_m = { d,8 <a, d f >8}

voice_vocal_stanza =  \fixed c' { 
  c e g c' b16 c'8. g4 bes8 as g f e16 f8. g4
  c8 e g c' b16 c'8. g4 bes8 as g f e2 
}

voice_refrain =  \fixed c' { 
  r8 c'4 b8 c'4 as8 f as8. g16 as8 bes8 c'4 as8 f \break
  r8 bes4 as8 g4 f e8. f16 e8 des c2 \break
  r8 c'4 b8 c'4 as8 f as8. g16 as8 bes8 c'4 as8 f 
  r8 bes4 as8 g4 f8 f  e8. f16 e8 des c8 c c4 \bar "|."

}

voice_refrain_two =  \fixed c' { 
  r8 as4 g8 as4 f8 c f8. e16 f8 g8 as4 f8 c \break
  r8 g4 f8 e4 des e8. f16 e8 des c2 \break
  r8 as4 g8 as4 f8 c f8. e16 f8 g8 as4 f8 c 
  r8 g4 f8 e4 des8 8 e8.  f16 e8 des c8 c c4 \bar "|."

}
chords_stanza = \chordmode { c1 bes2:m c2 c1 bes2:m c2 }
chords_refrain = \chordmode { f1:m f1:m bes1:m c1  }


all_chords = {
  \chords_stanza 
  \chords_refrain \chords_refrain 
}

stanza_one = \lyricmode {
    \set stanza = "1. " Ja8 u -- me -- ju ma8 -- la8 tit4 
    u8 -- mje nu vy ma8  -- la8  tschni8 -- vat8 \break
      
    u -- me -- ju sha -- ri -- ki krutit',4
    kar8 -- man -- i vi -- vo -- rat -- ji -- vat'4
    
    \set stanza = "Refr. " 
    Aj4 li8 -- món4 -- chi8 -- ki,8 
    vi8. ma16 -- i8 li -- mon4 -- chi8 -- ki 
    ""8 Gdje4 ras8 -- döt4 -- je4  vi8. ai16  mön8 sa -- du2
     ""8 Aj4 li8 -- mon4 -- chi8 -- ki,8 ví8. ma16 -- i8 li -- món4 -- chi8 -- ki \break
    ""8 Gdje4 ras8 -- döt4 -- je8 u   só8. -- ni16  al8 bal -- "  kón "8 -- chi8 -- ki4
     
} 

stanza_two = \lyricmode {   
    \set stanza = "2. "
    Na8 kos -- tets -- koi ben -- ja zjil,4
    ben8 -- ja maij sva -- yu lju -- bil4
    jes8 -- li jest' u be -- ni matj4
    zna8 -- chit, jest kou -- da pos -- latg
      
    } 
    
stanza_three = \lyricmode {   
    \set stanza = "3. "
    ja u tjo -- ti no -- che -- val,4 
    u8 tjo -- ti bi -- li go -- sti4
    ja8 u tjo -- ti pa -- pra -- sil,4 
    on8 -- a sk -- aza -- la  pos -- le
      
    } 


% -- container ---------------------------------------------
\score {
  <<
    
    \new ChordNames {
      \all_chords
    }
    
  \new Staff 
    {
    \new Voice = "lead" { 
           \oneVoice {\global 
                      \voice_vocal_stanza }  % stanza with one single voice
            << 
              \new Voice  = "refr_one" {
                  \voiceOne \voice_refrain }  % refrain, 2 voices
              \new Voice = "refr_second" {
                  \voiceTwo \magnifyMusic #0.7 
                  \voice_refrain_two}  % second voice smaller notes
            >> 
       }
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