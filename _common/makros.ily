\version "2.20.0"


% some useful makros
box_a = \markup { \override #'(box-padding . 0.3) \bold \box "A" }
box_as = \markup { \override #'(box-padding . 0.3) \bold \box "A'" }
box_b = \markup { \override #'(box-padding . 0.3) \bold \box "B" }
box_c = \markup { \override #'(box-padding . 0.3) \bold \box "C" }
box_d = \markup { \override #'(box-padding . 0.3) \bold \box "D" }
box_e = \markup { \override #'(box-padding . 0.3) \bold \box "E" }

mark_refrain = \markup \italic \bold "Refr."
mark_stanza = \markup \italic \bold "Stanza"
mark_coda = \markup \italic \bold "Coda"

% lyrics: sylable alignements: 

% once left aligne
align_l = \once \override LyricText.self-alignment-X = #LEFT 

% permanent left align with a small -x offset
align_syllables_left = <<
  \override LyricText.self-alignment-X = #LEFT  
  \override LyricText.X-offset = #-0.6 >>


% helper functions
triole = #(define-music-function
  (parser location my-notes)
  (ly:music?)
  #{
    \tuplet 3/2 { #my-notes } 
  #}
)
