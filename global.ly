\version "2.16.0"

tupletNumbersOn = {\override TupletNumber #'stencil = ##t}
tupletNumbersOff = {\override TupletNumber #'stencil = ##f}

globalOne = \relative c {
  \compressFullBarRests
  \numericTimeSignature
  \time 4/4
  \key es \major
  \tempo "Allegro amabile."
  
  % Page 3
  % Bar 1
  s1*13
  %\pageBreak
  
  % Page 4
  % Bar 14
  s1*18
  %\pageBreak
  
  % Page 5
  % Bar 32
  s1*17
  %\pageBreak
  
  % Page 6
  % Bar 49
  s1*6
  s1*4
  s1*6
  s1*4
  s1*4
  s1*5
  s1*5
  
}
