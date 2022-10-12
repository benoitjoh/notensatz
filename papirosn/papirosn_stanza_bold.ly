% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #3 % spacer between the staff group
}

\include "lyrics.ily"

% stanzas in bold
\markup \vspace #4
  \markup \fontsize #+5 \bold {
    \stanza_tabloid_vertical
  }

  \layout { }


