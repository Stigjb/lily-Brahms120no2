\version "2.12.3"

\include "global.ly"

rightOneVOne = \relative c, {
  \clef treble
  s1*0
  \override Beam #'auto-knee-gap = #3
  \change Staff = "down" es8(\p bes'
    \change Staff = "up" g' es' g bes, es g,) |
  \change Staff = "down" f,8( d'
    \change Staff = "up" as' f' as d, f as,) |
  \change Staff = "down" g,8( es'
    \change Staff = "up" bes' es)
    \change Staff = "down" g,( bes
    \change Staff = "up" es g) |
  \change Staff = "down" as,,8( f'
    \change Staff = "up" c' f)
    \change Staff = "down" as,( c
    \change Staff = "up" f as) |
  
  <d, as' d>4( <es as c> <f as bes>) r |
  <as, es' as>4( <bes d g> <c es f>) r |
  \change Staff = "down" bes,,8( bes'
    \change Staff = "up" f' d')
    \change Staff = "down" as,( f'
    \change Staff = "up" d' f) |
  \clef bass
  \voiceOne bes,8( es) \oneVoice <es, a c es>4 <f bes d>4. r8 |
  r4 <d as'>( <es g> <ges c es>) |
  
  <f as! bes>4. r8 r2 |
  \clef treble
  <g''! g'!>8( es' bes g) r2 |
  <d d'>8( as' f d) r2 |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times 2/3 {<es es'>8( bes' g bes g es)} r2 |
  
  %%%%%%%%%%
  % Page 4
  %%%%%%%%%%
  
  \times 2/3 {<f f'>8( c' as c as f)} r4 r8 <f, f'>-. |
  <as' f' as>4( ~ <as f' as>16 <g g'>) <e e'>( <f f'>) <as, f' as>4.( <f f'>8-.) |
  <as' f' as>4. <g, es' g>8 <g' es' g>4( ~ <g es' g>16 <f d' f>) <d b' d>( <es c' es>) |
  <es, c' es>4. <c' es c'>8-. <c, es c'>4 <a' c es a>4 |
  
  \times 2/3 {<bes es bes'>8( ges' es} bes16 ges es bes)
    \change Staff = "down" \voiceOne <ges bes des>2 ~ |
  <ges bes des>4 <ges as c>2 <f as ces>4 ~ |
  <f as ces>4 <fes ges bes> r <fes ges> |
  r4 <des e> r2
}

rightOneVTwo = \relative c {
  s1*7
  \voiceTwo <es bes'>4 s2 % Bar 8
}

leftOneVOne = \relative c {
  \clef bass
  \mergeDifferentlyDottedOn
  \voiceOne
  \stemDown s8 bes4. ~ bes2 |
  s8 d4. ~ d2 |
  \oneVoice \stemDown g,4 s2. |
  as4 s2. |
  
  \stemNeutral <bes f' bes>4( <c f bes> <d f bes>) r |
  <c es>4( <bes es> <as es'>) r |
  \stemDown s2 as4 s |
  \voiceOne
  bes4( bes bes \oneVoice bes,8) r |
  r4 b( c a)
  
  bes4 bes'8 r r2 |
  \voiceOne bes1 | bes1 |
  \oneVoice <g bes>4.( fis8 g bes es g,) |
  
  %%%%%%%%%%
  % Page 4
  %%%%%%%%%%
  
  <as c>4.( g8 \voiceOne as c f a,) |
  \oneVoice bes8 <bes, bes'>-. <d' bes' d>4. <bes bes'>8-. <d, bes' d>4 |
  s8 <b b'>8-. <d' d'>4. <c, c'>8-. <c' es c'>4 |
  s8 <a a'>-. <a, a'>4. <f' f'>8-. <f, f'>4 |
  
  \times 2/3 {<ges ges'>8( bes es} ges16 bes d ges) \voiceTwo <es,, es'>2 |
  as!2( des) |
  ges,2( bes |
  ges'2 bes4) r |
  
  
}

leftOneVTwo = \relative c {
  \voiceTwo
  es,2\p ~ es |
  f2 ~ f |
  s1*5
  
  g4 ges8( es) bes'4 s |
  s1*2 |
  es,4.( d8 f es ~ es4) |
  f4.( e8 g f ~ f4) |
  s1 |
  
  %%%%%%%%%%
  % Page 4
  %%%%%%%%%%
  
  s2 as4. a8 |
  s1*3
  
}

pianoROne = {
  <<
    \globalOne
    \new Voice \rightOneVOne
    \new Voice \rightOneVTwo
  >>
}

pianoLOne = {
  <<
    \globalOne
    \new Voice \leftOneVOne
    \new Voice \leftOneVTwo
  >>
}

pianoDynOne = \new Dynamics {
  r1\p
  r1*2
}
