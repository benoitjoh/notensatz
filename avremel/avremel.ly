\version "2.20.0"

global = { 
  \time 2/4 
  \key a \minor  }

melodie = 
  { e8 f e4 gis8 a gis8. f16 f8 e4. (e4.) r8 gis8 a b4 c'8 b c' a \break
    b gis4. (gis4) r8 e gis a gis8. e16 gis8 a b c' b2 (b4.) r8 \break
    e8 f e4 gis8 a gis8. f16 f8 e4. (e4.) r8 gis8 a b4 c'8 b c' a \break
    b8 gis4. (gis4) r8 gis8 a d e f gis a f gis e2 (e8) e a b \break
    c'4 b8. a16 c'8 c' b a gis b4. (b8) e8 b c'  d'4 b d'8 d' c' b  \break
    d' c'4. (c'8) a c' d' e'4  d'8 c' e' d' f' e' d'2 (d'8) e b c' \break 
    d'4 b8. b16 c'8 b c' d' e' r8 d' r c' e a b c'4 b8. a16 c'8 c' b a \break 
    gis 8 b4. (b8) e b c' d'4 b d'8 d' c' b d' c'4. (c'8) a c' d' \break 
    e'4 d'8 c' e' g' f' e' d'2 (d'8) a b c' d'4 e' d'8 c' b c' \break 
    a2 (a4) r4 gis8 (a b4) b8 (a gis a)  c'8 b4. (b2) gis8 (a b4) b8 ( a gis f) \break
    e2 (e) gis8 ( a b4) d'8 (c' b a) gis8 a4. (a2) a8 (d e f ) gis (a f gis) e2 (e4) r4  \bar "|." 
     }

akkorde = \chordmode { 
    e2 s s s s a:m e s s s s s e s s s s f e s d:m e s s a:m s e s d:m e:7
    a:m s s a:7 d:m s d:m f e a:m s s 
    e s s s a:m s s a:7 d:m s s e:7 a:m s e s s s s s e s d:m a:m s s d:m e
    }

text = \lyricmode 
  {text } 





\score {
<<
    
  \new ChordNames
    \transpose a a 
    \akkorde

  \new Staff 
  %\relative c' 
  {
   \global
   \clef treble
   \transpose a a' 
   \melodie
  }
 
\new Lyrics 
  \text

>>


  \layout { }
  \midi {
    \tempo 4=100
  }
}