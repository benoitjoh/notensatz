\version "2.20.0"

\include "../_common/makros.ily"


global = {
  \key b \minor
  \time 3/4
}

voice_vocal = \fixed c' { 
  \slurDashed
  fis4~ fis fis fis2 fis4 fis (e4.) d8 \tieDashed cis2~ cis4 e2 e4 e2 e4 e (d4.) cis8 b,2. 
  b,4 (d) fis b2 b4 d' cis'4. b8 fis2. a4 (g4.) e8 cis2 (cis4) e4 d4. cis8 b,2.\bar "||" \break
  
}

voice_refrain = \fixed c' {  
  fis4 fis^\mark_refrain fis fis fis fis fis e4. d8 cis2 cis4 e e e  \break
  e e e e d4.cis8  b,2 4 b, d fis b2 4  \break
  d'4 cis'4. b8 fis2 4 a g4. e8 cis2 4 e d4. cis8 b,2. \bar "|."
}

voice_refrain_second= \fixed c' {
  d4 d d d d d d d4 b,4 cis2 cis4 cis4 4 4 4 4 4 4 4 fis,  b,2 b,4 
  d4 d cis b,2 b,4 b, d4. fis8 b2 b4 g g4. cis8 fis2 fis4 fis,4 gis,4. ais,8 b,2.
  }


voice_chords = \chordmode {
  \override ChordName.font-size = #-1
   b2.:m s2. b2.:m  fis:7 s2. fis:7 s2. b2.:m
   s4*12 e2.:m fis:7 s2. b:m
   b2.:m s2. b2.:m  fis:7 s2. fis:7 s2. b2.:m
   s4*12 e2.:m fis:7 s2. b:m
}

% guitar voice --------------------------------------

% shorthands for stanza
hm =  {r4 <fis b d' fis'>4 4}
hm_e =  {r4 <e b d' fis'>4 4}
hm_cis =  {r4 <fis b cis' fis'>4 4}
fis_sev =  {r4 <e ais cis' fis'>4 4}
em = {r4 <e g b e'>4 4}

% shorthands for refrain
r_hm = {r8 fis d' fis d' fis}
r_hm_e = {r8 e d' e d' e}
r_fis = {r8 e cis' e cis' e}
r_em = {r8 e b e b e}

voice_guitar_one =  
  \fixed c {
    % stanza
   \hm | \hm | \hm | \fis_sev | \fis_sev | \fis_sev | \fis_sev | \hm |
   \hm | \hm | \hm_e | \hm_cis | \em  \fis_sev | \fis_sev | <fis b d' fis'>2.|
   % refrain
   \r_hm | \r_hm | \r_hm | \r_fis | \r_fis | \r_fis | \r_fis | \r_hm | 
   \r_hm | \r_hm | \r_hm_e | \r_fis | \r_em | r8 e ais cis' ais e | r8 e ais cis' fis' ais | <fis b d' fis'>2.|
  }


voice_guitar_two = 
  \fixed c {
  b,2. b, b, fis, cis fis, cis2 (fis,4)  b,2.
  b,2. a,-3 gis, g, e, fis, cis2 fis,4 b,2. 
  b,2. b, b, fis, cis fis, cis2 (fis,4)  b,2.
  b,2. a, gis, g, e, fis, cis2. b,2. 
  }