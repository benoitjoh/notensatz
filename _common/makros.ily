\version "2.20.0"


% some useful makros
box_a = \markup { \override #'(box-padding . 0.4) \bold \box "A" }
box_as = \markup { \override #'(box-padding . 0.4) \bold \box "A'" }
box_b = \markup { \override #'(box-padding . 0.4) \bold \box "B" }
box_c = \markup { \override #'(box-padding . 0.4) \bold \box "C" }

mark_refrain = \markup \italic \bold "Refr."
mark_stanza = \markup \italic \bold "Stanza"

% lyrics: sylable alignements: 

% once left aligne
align_l = \once \override LyricText.self-alignment-X = #LEFT 

% permanent left align with a small -x offset
align_syllables_left = <<
  \override LyricText.self-alignment-X = #LEFT  
  \override LyricText.X-offset = #-0.6 >>
