\version "2.20.0"


voice_solo_a = \fixed c'' { 
  \set Score.currentBarNumber = #33
  \clef violin
  g2^"33"^\markup \bold "Violin" r8 g8 g fis f a d4~d2|c16 d g8 d c d16 c g,4 8\break
  g,8 bes, a, g, g, f, f, e, f, 16 f, d,8~d,4~d,16 f, a, d cis d e d | cis8 d bes,4\trill \break
  a,16 bes, a,8 a,16 f, e, d, | f, g, e, f, g, a, cis e | g8 f g f g f16 g~g f g f | e f d8 a16 a a8 | a4 gis8 a|\break
  f4\trill e8 f d16 a, cis d e8 d | cis16 d a, c bes,8 a, | g,16 f, e, d, g,8 fis,16 g,| f,8 e,16 f, e, g, bes, d| \break
 e16 g f e d e cis d | \triole{a,16 cis c} \triole{b,16 bes, a,} a,8 a, | d, a,, a,, g,, | a,, bes,, f,8. d,16 | f,8 bes, a, d | c a, f,4| \break
 e,16 f, fis, g, e, f, fis, g, e f fis, g,~g,8 g, | f, d, e, cis, | d, a,, b,, cis, d, r8 r4 \break
}

voice_solo_b = \fixed c'' { 

 \set Score.currentBarNumber = #97
 r4^"97" r8 a8 | 
 gis4.\trill gis16 a | e4 g8. e32 g | f8 cis d a, | f, d, r8 bes | bes a r8 g | e g f\trill e| \break
 r16 a, cis8~cis bes,16 a, | g,16 e, g, f, e, cis, d, a,, | r4 r8 g,16 e, | d,16 e, f, d, f,8 f,16 e, | f, d, f, f, g, e, f, g, | \break
 a,16 g, f,8~f,16 e, d, e, |f, a, f8 a8. f16 | a8 g~g e | <a, f>8. e16 d8 <cis e>8 | <d f> r8 <cis e>8 r8| \break
  %53
 a,8 d~d16 a, b, cis d8 f a8. g16 | a8 f~f e | a8 gis4 f8 bes 4 g8 g | bes8 bes bes,16 g, f, e, |\break
 d,8 cis, bes,, a,, | g,, cis, e, g, | f,8. e,16 d,8 c8~c b, c cis | d a, c f |\break
 a c f' e' d'8. c'16 d'8 e' | f' cis' e' cis' | d' cis' d' cis' d'4 r4
}