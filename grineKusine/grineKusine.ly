% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Kusine"
version_date = "10.2024"
\include "../_common/footers.ily"
\include "../_common/makros.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #5
  %systems-per-page = 6  % force nr. of systems
  }

\header {
  title = \markup \caps  {"Di Grine Kusine"}
  composer = "Traditional"
  copyright = ""
  arranger = ""
  }

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key d \minor
  \time 2/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
}

intro =  \fixed c' { 
  r8 a'4 g'8 | a'8 g' f' e' | r8 f'4 e'8 | f'8 e' d' cis' | r8 d'4 c'8 | d'8 c' bes a \triole{g4 f e} | d2 \break
}
chords_intro = \chordmode { d2:m s2 s2 s2 g2:m  s2 a2:7 d2:m  }

interlude =  \fixed c' { 
  \triole{d8 e f}  \triole{e8 f g } | \triole{f8 g a} \triole{g8 a bes} | \triole{a4 bes cis'} | d'4 r4
}
chords_interlude = \chordmode { d4:m g4:m  d4:m g4:m a2:7 d2:m  }

voice_vocal_stanza =  \fixed c' { 
  d8 a, d f | a a g f | a4. (gis8) | a4. r8 \break
  c'8 b c' b | c' b a gis | a4. (gis8) | a4. r8 \break
}

voice_refrain =  \fixed c' { 
  \repeat volta 2 {
  a8 g a g | a g f e | g4. ( e16 f) | g4. r8 \break
  a8 a, a, a, | f e d cis | d2 | d4. r8
  }

}

chords_stanza = \chordmode { d2:m s2 s2 d2:m e2 s2 a2 s2   }
chords_refrain = \chordmode { \repeat volta 2 { f2 s2 d2:m g2:m a2 s2 d2:m s2  } }

stanza_one = \lyricmode {
    \set stanza = "1. " 
    \align_syllables_left
    Tsu8 mir is ge -- ku -- men a ku -- si2 -- ne,2 
    scheijn8 wi gold is sie ge -- wejn, di gri2 -- ne,2 
    be8 -- ke -- lech wi roj -- te po -- me -- ran2 -- tsn,2
    fi8 -- se -- lech wos be -- tn sich tsum tan2 -- tsn.
   
     
} 

stanza_two = \lyricmode {   
    \set stanza = "2. "
    \align_syllables_left
    He8 -- re -- lech wi sej -- dn -- web ge -- lok2 -- te,
    tsejn8 -- de -- lech wi pe -- re -- lech ge -- tok2 -- te,
     ej8 -- ge -- lech wi hi -- ml -- bloj in fri2 -- ling, 
     li8 -- pe -- lech wi kar -- sche -- lech  a tswi2 -- ling.
      
    } 
    
stanza_three = \lyricmode {   
    \set stanza = "3. "
    \align_syllables_left
    Nischt8 ge -- gan -- gen is si, nor ge -- schprun2 -- gen,
    nischt8 ge -- redt hot si, "___" nor ge -- sun2 -- gen,
    le8 -- ben -- dik un frej -- lech je -- der mi2 -- ne, 
    ot8 a -- soj ge -- wejn is majn ku -- si2 -- ne.
    
    } 
    
 stanza_four = \lyricmode {   
    \set stanza = "4. "
    \align_syllables_left
    Un8 a -- soj a -- ri -- ber sen -- en jo2 -- rn,
    fun8 majn ku -- si -- ne is a tel ge2 -- worn, 
    pej8 des hot si woch -- en -- lang ge -- kli2 -- bn, 
    bis8 fun ir is gor -- nischt mer ge -- bli2 -- bn. 
    
    } 
    
 stanza_five = \lyricmode {   
    \set stanza = "5. "
    \align_syllables_left
    Haint8 as ich ba -- ge -- gn majn ku -- si2 -- ne,
    un8 ich freg ir: s'ma -- chst ep -- es gri2 -- ne?
    Siftst8 si op un ch'lej -- en in ir mi2 -- ne: 
    Bren8 -- en sol koo -- lum -- bus -- es me -- die2 -- ne 
 }

% -- container ---------------------------------------------
\score {
  \header { piece = "Intro" }
  <<
    \new ChordNames {
        \override ChordName.font-size = #-1
        \chords_intro
    }
    
  \new Staff 
    {
    \new Voice = "lead" { 
           \oneVoice {\global 
                      \intro}  % stanza with one single voice
       }
    }
   
 >>
  \layout { }
  \midi { \tempo 4=120 }
}

\score {
  \header { piece = "Interlude" }
  <<
    \new ChordNames {
        \override ChordName.font-size = #-1
        \chords_interlude
    }
    
  \new Staff 
    {
    \new Voice = "lead" { 
           \oneVoice {\global 
                      \interlude}  % stanza with one single voice
       }
    }
   
 >>
  \layout { }
  \midi { \tempo 4=120 }
}

\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #-1
      \chords_stanza
      \chords_refrain
    }
    
  \new Staff \with {instrumentName = "Vocal" }
    {
    \new Voice = "lead" { 
           \oneVoice {\global 
                      \voice_vocal_stanza 
                      \voice_refrain}  % stanza with one single voice

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
  \new Lyrics 
    \stanza_four
  \new Lyrics 
    \stanza_five
  
  >>
  \layout { }
  \midi { \tempo 4=120 }
}