\version "2.20.0"
% history of used commands

% textannotations
box_a = \markup { \override #'(box-padding . 0.4) \bold \box "A" }
mark_refrain = \markup \italic "Refr."
\markup \caps \bold \italic \tiny ...

% %\paper { annotate-spacing = ##t }

%%%%%%%%%%%%%%% lyrics

% once left aligne
align_l = \once \override LyricText.self-alignment-X = #LEFT 

% permanent left align with a small -x offset
align_syllables_left = <<
  \override LyricText.self-alignment-X = #LEFT  
  \override LyricText.X-offset = #-0.6 >>

%%%%%%%%%%%%%%% notes
\magnifyMusic 0.8
\tieDashed... 
\slurDashed .. 
\grace {d16 (e16 d)} 
\relative { a'4\rest d4\rest }

%%%%%%%%%%%%%%% staff
\new Staff \with {\magnifyStaff #5/7}
#(layout-set-staff-size 14)
systems-per-page = 6  % force nr. of systems
