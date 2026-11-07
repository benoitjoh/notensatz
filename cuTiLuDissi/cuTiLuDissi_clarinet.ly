% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\include "../_common/makros.ily"
\footer_common_with_pagenum 
\header { instrument = \markup { "Clarinet in B" \tiny \flat } }

\paper {
  system-system-spacing.padding = #5
  %systems-per-page = 6  % force nr. of systems
  }


\markup \vspace #1 % space between header and score

\include "music.ily"

global = {
  \key b \minor
  \time 3/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet

}
voice_vocal_stanza =  \fixed c' { 
  \mark #1
  c'4 b4. a8 | a4 e4. e8 | g4 f4. e8 | e4 e r8 e8 |
  e4 f4. e8 | e4 b,4. b,8 | \break
  b,8 b, c4 d | f e r | 
  \mark #2
  
  c'4 b4. a8 | a4 f2 |
  d'8 c' c' b b a | a4 e2|\break
  c'4 a8 a b c' | b4 b4. e8 | c'8 b a4 gis4| a2 r4 |
  c'4 b4. a8 | a4 f2| \break
  d'8 c' c' b b a | a4 e2| c'4 a8 a b c' | b4 4. e8 |
  a8 b gis4 b | a2 r4 \break
  \mark #3
  a,8 b, c d e f | d2. | a4 f d | c2. | a,8 b, c d e f |e2. | 
  e8 f e d c d | e2. 
  a,8 b, c d e f | d2. | a4 f d | c2. | a,8 b, c d e f |e2. | 
  e8 f e d c b, | a,2.~ | a,4 r2 \break

}

% -- container ---------------------------------------------
voice_cla_stanza =  \fixed c' {
  r2. |b4 b4. b8 | b4 b4. b8 | ais4 ais4. ais8 | ais4 ais4. ais8 | ais4 ais4. ais8 \break
  | ais4 ais4. ais8 | b4 b4. b8 |
  %B
   g4 g4. g8 | g4 g4. g8 | g4 g4. g8 | fis4 fis4. fis8 | fis4 fis4. fis8 | e4 e4. e8 | e4 e4. e8 | d4 r2 | r2. |
   g4 g4. g8 | g4 g4. g8 | fis4 fis4. fis8 | fis4 fis4. fis8 | e4 e4. e8 | e4 e4. e8 | d4 r2 | 
   %C
   b,8 cis d e fis g | e2. | b4 g e | d2. | b,8 cis d e fis g | fis2. |  fis8 g fis e d e | fis2.
   b,8 cis d e fis g | e2. | b4 g e | d2. | b,8 cis d e fis g | fis2. |  fis8 g fis e d cis  |b,2.
  
}

\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #1
      
      \transpose d e {
         \chords_stanza
       }
       
    }
    
   % \new ChordNames {
   %   \override ChordName.font-size = #-3
   %%   {
   %     \chords_stanza
   %   }
   % }
   \new Staff \with {instrumentName = "Vocal" midiInstrument = "electric piano 1"}
    {
        \global
     \transpose d e{
      \voice_vocal_stanza 
           << 
              \new Voice  = "refr_one" {
                  \voiceOne \voice_vocal_stanza_d } 
              \new Voice = "refr_second" {
                  \voiceTwo \magnifyMusic #0.7 
                  \voice_vocal_stanza_d_basso}  % second voice smaller notes
            >>     
      }
    }
    
  \new Staff \with  {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } 
                     midiInstrument = "electric piano 1"
                    }
    {
      {
        \global
        \voice_cla_stanza 
       
      }
    }
    

  >>
  \layout { }
  \midi { \tempo 4=120 }
}