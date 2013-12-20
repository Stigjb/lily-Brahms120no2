\version "2.12.3"
\include "global.ly"
\include "clarinet.ly"

\header {
  title = "Clarinet sonata no. 2"
  composer = "Johannes Brahms"
  opus = "Op. 120 no. 2"
}

\score {
  \new Staff \with {midiInstrument = #"clarinet"} << \transpose bes c' { \globalOne } \clarinetOne >>
  
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}

