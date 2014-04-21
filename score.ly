\version "2.18.2"
\include "global.ly"
\include "clarinet.ly"
\include "piano.ly"

\header {
  title = "Clarinet sonata no. 2"
  composer = "Johannes Brahms"
  opus = "Op. 120 no. 2"
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        midiInstrument = #"clarinet"
        fontSize = #-2
        \override StaffSymbol.staff-space = #(magstep -2)
        \override StaffSymbol.thickness = #(magstep -2)
      } <<
        \transpose bes c' { \globalOne }
        \clarinetOne
      >>
      \new PianoStaff <<
        \new Staff = "up" \pianoROne
        \pianoDynOne
        \new Staff = "down" \pianoLOne
      >>
    >>
    \layout {}
    \midi {
      \tempo 4 = 120
    }
  }
}

%{\bookpart {
  \score {
    \new Staff \with {midiInstrument = #"clarinet"} << \transpose bes c' { \globalOne } \clarinetOne >>
    \layout {}
    \midi {
      \tempo 4 = 120
    }
  }
}%}

