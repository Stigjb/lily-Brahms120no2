\version "2.12.3"

\include "global.ly"

rightOneVOne = \relative c, {
  \clef treble
  s1*0 % Workaround to allow the voice to start in the lower staff
  \override Beam #'auto-knee-gap = #3
  \override TupletBracket #'bracket-visibility = #'if-no-beam
  
  \change Staff = "down" es8( bes'
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
  r4 <des e> r2 |
  
  \change Staff = "up" \oneVoice
    r4 <d''! bes' d!>-.( <d, bes' d>-.) r8 <d bes' d>[( |
  <d bes' d>8 <es g>]) <es g>4 <c a' c> r8 <c a' c>[( |
  <d f>8 <a f' a>]) <bes d>4.( \clef bass <g cis>8) <g cis>4( |
  s8 <fis d'>) <fis d'>4( <g c> <c, f>) |
  \clef treble r4 <f' a f'>( <es bes' es> <es as>) |
  
  r4 \change Staff = "down" \voiceOne <f, bes>( <es ges> <c f>) |
  \change Staff = "up" \oneVoice r8 <d'' bes' d> <d bes' d>4 r8 <d b' d> <d b' d>4 |
  r8 <g, es' g> <g es' g>4 r8 <a f' a> <a f' a>4 |
  r8 <f a f'> <f a f'>4 r8 <f es' f> <f es' f>4 |
  r8 <bes es bes'> <bes es bes'>4 r8 <d, bes' d> <d bes' d>4 |
  
  %%%%%%%%%%
  % Page 5
  %%%%%%%%%%
  
  r8 <a' es' a> <a es' a>4 r8 <es a es'> <es a es'>4 | % Bar 32
  r8 <e a cis e> <e a cis e>4 r8 <a, d a'> <a d a'>4 |
  r8 <d' a' d> <es a es'>4 r8 <bes, es g bes> <a es' f a>4 |
  r8 <c' es g c> <ges c es ges>4 r8 <e bes' d e> <f bes d f>4 |
  r8 <f a f'> <f a f'>4 r8 <f es' f> <f es' f>4 |
  
  r8 <f a f'>4 <f es' f> <f as f'> <f g d' g>8 | % Bar 37
  r8 <g c es g>4 <c es c'>8 <c, es gis>16( a' es a c es a c) |
  <d, fis a d>4-> <es g c es>8-. <c g' c>-. <bes d g bes>4-> <a f' a>8-. <c es! a c>-.
  \change Staff = "down" \voiceOne \times 2/3 { r8 d,,[( f \change Staff = "up" \oneVoice d' f d']
    \tupletNumbersOff es[ c es, \change Staff = "down" c a c])} |
  
  \voiceOne \times 2/3 {r8 bes,[( d bes' \change Staff = "up" \oneVoice
    d bes'] a[ f c \change Staff = "down" a f a])} | % Bar 41
  \voiceOne \times 2/3 {ces,8( as' ces bes \change Staff = "up" \oneVoice g' bes)
    \change Staff = "down" es,,( a \change Staff = "up" es' d bes' d)} |
  \change Staff = "down" \times 2/3 {e,,8[( bes' \change Staff = "up"
    e bes' e bes'])} a16( f es c a f es c) |
  
  
}

rightOneVTwo = \relative c {
  s1*7
  \voiceTwo <es bes'>4 s2 % Bar 8
}

leftOneVOne = \relative c {
  \clef bass
  \mergeDifferentlyDottedOn
  \voiceTwo s8 bes4. ~ bes2 |
  s8 d4. ~ d2 |
  g,4 s2. |
  as4 s2. |
  
  \oneVoice <bes f' bes>4( <c f bes> <d f bes>) r |
  <c es>4( <bes es> <as es'>) r |
  \voiceTwo s2 as4 s |
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
  
  \oneVoice r4 bes,( bes') r8 bes[( |
  bes8 c]) c4( f,) r8 f[( |
  bes f]) g4.( <es cis'>8) <es cis'>4( |
  s8 <d d'>) <d d'>4( <es c'!> <f a>) |
  r4 <f' a>( <ges bes> <as c>) |
  
  r4 \voiceTwo <des,, des'>( <es c'> <f a>) |
  \oneVoice r8 <bes, bes'> <bes bes'>4 r8 <g g'> <g g'>4 |
  r8 <c c'> <c c'>4 r8 <f, f'> <f f'>4 |
  r8 <f'' a> <f a>4 r8 <f,, f'> <f f'>4 |
  r8 <f'' bes es> <f bes es>4 r8 <f,, f'> <f f'>4 |
  
  %%%%%%%%%%
  % Page 5
  %%%%%%%%%%
  
  r8 <f'' c'> <f c'>4 r8 <f,, f'> <f f'>4 | % Bar 32
  r8 <f'' a cis> <f a cis>4 r8 <f,, f'> <f f'>4 |
  <f'' a f'>4 <f,, f'> <f'' c'> <f,, f'> |
  <f'' c' es>4 <f,, f'> <f'' bes d> <f,, f'> |
  <f'' a>4 <f,, f'> <f'' c'> <f,, f'> |
  
  <f'' a>4 <f,, f'> <f'' as c> <f,, f'> | % Bar 37
  <f'' c' es>4 <f,, f'> <f' c' es f> <f, f'>8-. <es es'>-. |
  <d d'>4-> <c c'>8-. <es' es'>-. <e e'>4-> <f f'>8-.<f, f'>-. |
  \voiceTwo bes2 ~ <bes bes'> |
  
  bes2 ~ <bes bes'> | % Bar 41
  bes4 <bes' g'> bes, <bes' f' bes> |
  g,4 \oneVoice <g'' bes> f,, <f'' a> |
  
  
}

leftOneVTwo = \relative c {
  \voiceTwo
  es,2 ~ es |
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
