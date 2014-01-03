\version "2.17.97"

\include "global.ly"

rightOneVOne = \relative c, {
  \clef treble
  s1*0 % Workaround to allow the voice to start in the lower staff
  \override Beam.auto-knee-gap = #3
  \override PianoStaff.TupletBracket.bracket-visibility = ##f
  \set PianoStaff.tupletSpannerDuration = #(ly:make-moment 1/4)
  
  \change Staff = "down" es8( bes'
    \change Staff = "up" g' es' g bes, es g,) | % Bar 1
  \change Staff = "down" f,8( d'
    \change Staff = "up" as' f' as d, f as,) |
  \change Staff = "down" g,8( es' \change Staff = "up" bes' es)
    \change Staff = "down" g,( bes \change Staff = "up" es g) |
  \change Staff = "down" as,,8( f' \change Staff = "up" c' f)
    \change Staff = "down" as,( c \change Staff = "up" f as) |
  
  <d, as' d>4( <es as c> <f as bes>) r | % Bar 5
  <as, es' as>4( <bes d g> <c es f>) r |
  \change Staff = "down" bes,,8( bes'
    \change Staff = "up" f' d')
    \change Staff = "down" as,( f'
    \change Staff = "up" d' f) |
  \clef bass
  \voiceOne bes,8( es) \oneVoice <es, a c es>4 <f bes d>4. r8 |
  r4 <d as'>( <es g> <ges c es>) |
  
  <f as! bes>4. r8 r2 | % Bar 10
  \clef treble
  <g''! g'!>8( es' bes g) r2 |
  <d d'>8( as' f d) r2 |
  \tuplet 3/2 {<es es'>8( bes' g bes g es)} r2 |
  
  %%%%%%%%%%
  % Page 4
  %%%%%%%%%%
  
  \tuplet 3/2 {<f f'>8( c' as c as f)} r4 r8 <f, f'>-. | % Bar 14
  <as' f' as>4( ~ q16 <g g'>) <e e'>( <f f'>) <as, f' as>4.( <f f'>8-.) |
  <as' f' as>4. <g, es' g>8 <g' es' g>4( ~ q16 <f d' f>) <d b' d>( <es c' es>) |
  <es, c' es>4. <c' es c'>8-. <c, es c'>4 <a' c es a>4 |
  
  \tuplet 3/2 {<bes es bes'>8( ges' es} bes16 ges es bes)
    \change Staff = "down" \voiceOne <ges bes des>2 ~ | % Bar 18
  <ges bes des>4 <ges as c>2 <f as ces>4 ~ |
  q4 <fes ges bes> r <fes ges> |
  r4 <des e> r2 |
  
  \change Staff = "up" \oneVoice
    r4 <d''! bes' d!>-.( <d, bes' d>-.) r8 <d bes' d>[( |
  q8 <es g>]) q4 <c a' c> r8 q[( |
  <d f>8 <a f' a>]) <bes d>4.( \clef bass <g cis>8) q4( ~ |
  q8 <fis d'>) q4( <g c> <c, f>) |
  \clef treble r4 <f' a f'>( <es bes' es> <es as>) |
  
  r4 \change Staff = "down" \voiceOne <f, bes>( <es ges> <c f>) | % Bar 27
  \change Staff = "up" \oneVoice r8 <d'' bes' d> q4 r8 <d b' d> q4 |
  r8 <g, es' g> q4 r8 <a f' a> q4 |
  r8 <f a f'> q4 r8 <f es' f> q4 |
  r8 <bes es bes'> q4 r8 <d, bes' d> q4 |
  
  %%%%%%%%%%
  % Page 5
  %%%%%%%%%%
  
  r8 <a' es' a> q4 r8 <es a es'> q4 | % Bar 32
  r8 <e a cis e> q4 r8 <a, d a'> q4 |
  r8 <d' a' d> <es a es'>4 r8 <bes, es g bes> <a es' f a>4 |
  r8 <c' es g c> <ges c es ges>4 r8 <e bes' d e> <f bes d f>4 |
  r8 <f a f'> q4 r8 <f es' f> q4 |
  
  r8 <f a f'>4 <f es' f> <f as f'> <f g d' g>8 | % Bar 37
  r8 <g c es g>4 <c es c'>8 <c, es gis>16( a' es a c es a c) |
  <d, fis a d>4-> <es g c es>8-. <c g' c>-. <bes d g bes>4-> <a f' a>8-. <c es! a c>-.
  \change Staff = "down" \voiceOne \tuplet 3/2 { r8 d,,[( f \change Staff = "up" \oneVoice d' f d']
    \tupletNumbersOff es[ c es, \change Staff = "down" c a c])} |
  
  \voiceOne \tuplet 3/2 {r8 bes,[( d bes' \change Staff = "up" \oneVoice
    d bes'] a[ f c \change Staff = "down" a f a])} | % Bar 41
  \voiceOne \tuplet 3/2 {ces,8( as' ces bes \change Staff = "up" \oneVoice g' bes)
    \change Staff = "down" es,,( a \change Staff = "up" es' d bes' d)} |
  \change Staff = "down" \tuplet 3/2 {e,,8[( bes' \change Staff = "up"
    e bes' e bes'])} a16( f es c a f es c) |
  
  r4 bes''(\f a es) | % Bar 44
  a8( g d g f4 c) |
  \voiceOne r8 d( es bes es d es bes) |
  \oneVoice r8 \voiceOne cis( d a d cis fis e) |
  \oneVoice r8 <d, fis d'> q4 r8 <cis g' cis> q4 |
  
  %%%%%%%%%%
  % Page 6
  %%%%%%%%%%
  
  r8 <d fis d'> q4 r8 <c g' c> q4 | % Bar 49
  r8 <bes d bes'> q4 r8 <bes des e> q4 |
  r8 <g! bes des g!> q4 \clef "bass" r8 <es a> q4 |
  \change Staff = "down" bes,8( bes' \change Staff = "up" d bes' d es, a es') |
  
  \change Staff = "down" d,,8( d' \change Staff = "up" f bes f' g, bes d) | % Bar 53
  r8 \voiceOne f,( bes b) \oneVoice r8 \voiceOne f( c' cis) |
  d,( as'! ~ \oneVoice <as d>4) r2 |
  \clef "treble" es''4.( d8 f es g, c) |
  
  as2( d,4) \clef "bass" r8 c( | % Bar 57
  \voiceOne des2.) r4 |
  \clef "treble" c'2( fis,4) \oneVoice r8 <d d'>-. |
  <d' g bes d>4.( <bes bes'>8-.) <d, f bes d>4.( <f f'>8-.) |
  
  <f' bes d f>4.( <d d'>8-.) <f, a d f>4.( <a a'>8-.) | % Bar 61
  <a' d a'>4. <as, as'>8-. <as' d as'>4. <g, g'>8-. |
  \tuplet 3/2 { <g' c g'>( es'! c g es c) g[( es bes \clef "bass" g es bes]) } |
  
  %%%%%%%%%%
  % Page 7
  %%%%%%%%%%
  
  \tuplet 3/2 { r8 g( g') r bes,( bes') \clef "treble" r g( g') r bes,( bes') } | % Bar 64
  d,4( <g bes d>) r8 \voiceOne d'( d es |
  es4 a,) \oneVoice r8 \voiceOne a( d a |
  d4 g,) \oneVoice r8 \voiceOne g( c g |
  
  c8 g b g bes4 g) | % Bar 68
  \clef "bass" \oneVoice r4 <d, g d'>-.( <f! g>-.) r8 <es g> |
  q4 <es es'> <d a'> \clef "treble" r8 <d' ais'>[( |
  q8 <d b'>] q4. <e g e'>8 q4) ~ |
  
  q8 <b g'>( q4 <d b'> <c a'>) | % Bar 72
  \voiceOne <c d fis a d>4.( cis'8 e d4.) ~ |
  \oneVoice d8 d4. ~ d8 d4. ~ |
  
  d8 <f, g b g'>4( fis'8 a g4.) ~ | % bar 75
  g8 g4. ~ g4 b,,8( e |
  d8 c) g[( c b a]) r4 |
  
  %%%%%%%%%%
  % Page 8
  %%%%%%%%%%
  
  % Bar 78
  <g b g'>4 r r \tupletNumbersOn \tuplet 3/2 { <c' c'>8( g' <c, c'> } |
  \tupletNumbersOff
  \tuplet 3/2 { g'8-.)( <b, b'>-. d-. <g, g'>-. b-. <d, d'>-. g-. <b, b'>-. d-.) } <es, es'>8 <f f'> |
  <g b g'>4 r r <f' d' f>8( <es c' es>) |
  <d b' d>2 r4 <f d' f>8( <es c' es> |
  
  % Bar 82
  <as f' as>8 <g es' g> <f d' f> <es c' es> <d b' d>4) r |
  \clef "bass" r \voiceOne b4 s2 \clef "treble" \oneVoice |
  r4 <e cis' e>8( <d b' d> <g e' g> <fis d' fis> <e cis' e> <d b' d> |
  <cis ais' cis>4) r r \clef "bass" \voiceOne bes |
  
  % Bar 86
  \oneVoice <f a f'>4 r r \clef "treble" \times 2/3 { f'8-.( <c c'>-. a'-.) } |
  \times 2/3 { <es es'>8-.( c'-. <f, f'>-. es'-. <a, a'>-. f'-. <c c'>-. a'-. <f f'>-.) bes,( <f f'> b) } |
  \times 2/3 { bes8( <es, es'> bes') bes( <f f'> bes) bes( <f f'> bes <f f'> bes <es, es'>) } |
  
  % Bar 89
  
}

rightOneVTwo = \relative c {
  s1*7
  \voiceTwo <es bes'>4 s2. % Bar 8
  
  s1*37
  
  r8 <f' ces'> s <es bes'> s <f as> s <es g> | % Bar 46
  s8 <e bes'> s <d a'> s <e a> s <g cis> | % Bar 47
  s1*6 |
  s8 f,4 gis8 s f4 a8 | % Bar 54
  d,4 s2. |
  s1*2 |
  e8( g bes2) r4 | % Bar 58
  s1*5
  
  %%%%%%%%%%
  % Page 7
  %%%%%%%%%%
  
  s1 | % Bar 64
  s2 s8 <g' bes>4 q8 ~ |
  q4 g s8 g4 <f a>8 ~ |
  q4 f s8 f4 <e g>8 ~ |
  
  q8 <es g>4 <d g>8 ~ q4 <cis e> | % Bar 68
  s1*3 |
  
  s2 fis | % Bar 72
  s1*2 |
  
  s1*3 | % Bar 75
  
  %%%%%%%%%%
  % Page 8
  %%%%%%%%%%
  
  s1 | % Bar 78
  s2. c4 |
  s1*2 |
  
  % Bar 82
  s1 |
  s4 <d, d'>8( <e e'>) <fis ais fis'>2 |
  s1 |
  s2. <des des'>8( <es es'>) |
}

leftOneVOne = \relative c {
  \clef bass
  \mergeDifferentlyDottedOn
  \voiceTwo s8 bes4. ~ bes2 | % Bar 1
  s8 d4. ~ d2 |
  g,4 s2. |
  as4 s2. |
  
  \oneVoice <bes f' bes>4( <c f bes> <d f bes>) r | % Bar 5
  <c es>4( <bes es> <as es'>) r |
  \voiceTwo s2 as4 s |
  \voiceOne
  bes4( bes bes \oneVoice bes,8) r |
  r4 b( c a)
  
  bes4( bes'8) r r2 | % Bar 10
  \voiceOne bes1 | bes1 |
  \oneVoice <g bes>4.( fis8 g bes es g,) |
  
  %%%%%%%%%%
  % Page 4
  %%%%%%%%%%
  
  <as c>4.( g8 \voiceOne as c f a,) | % Bar 14
  \oneVoice bes8 <bes, bes'>-.\noBeam <d' bes' d>4. <bes bes'>8-. <d, bes' d>4 ~ |
  q8 <b b'>8-. <d' d'>4. <c, c'>8-. <c' es c'>4 ~ |
  q8 <a a'>-. <a, a'>4. <f' f'>8-. <f, f'>4 |
  
  \tuplet 3/2 {<ges ges'>8( bes es} ges16 bes d ges) \voiceTwo <es,, es'>2 | % Bar 18
  as!2( des) |
  ges,2( bes |
  ges'2 bes4) r |
  
  \oneVoice r4 bes,( bes') r8 bes[( | % Bar 22
  bes8 c]) c4( f,) r8 f[( |
  bes f]) g4.( <es cis'>8) q4( ~ |
  q8 <d d'>) q4( <es c'!> <f a>) |
  r4 <f' a>( <ges bes> <as c>) |
  
  r4 \voiceTwo <des,, des'>( <es c'> <f a>) | % Bar 27
  \oneVoice r8 <bes, bes'> q4 r8 <g g'> q4 |
  r8 <c c'> q4 r8 <f, f'> q4 |
  r8 <f'' a> q4 r8 <f,, f'> q4 |
  r8 <f'' bes es> q4 r8 <f,, f'> q4 |
  
  %%%%%%%%%%
  % Page 5
  %%%%%%%%%%
  
  r8 <f'' c'> q4 r8 <f,, f'> q4 | % Bar 32
  r8 <f'' a cis> q4 r8 <f,, f'> q4 |
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
  
  <bes d> r4 \tuplet 3/2 {c,8[( es a c a c])} | % Bar 44
  bes,4 r \tuplet 3/2 {a8[( c f a f a])} |
  as,8-.[( <f' ces'>-.]) g,-.[( <es' bes'>-.]) bes-.[( <f' as>-.]) es,-.[( <bes' g'>-.]) |
  g8-.[( <e' bes'>-.]) fis,-.[( <d' a'>-.]) a-.[( <e' a>-.]) a,,-.[( <a' e' a>-.]) |
  d,4( d') es!2 |
  
  %%%%%%%%%%
  % Page 6
  %%%%%%%%%%
  
  d,,4( d') es2 | % Bar 49
  f4( f') ges2 |
  e,,4( e') f2 |
  \voiceTwo s8 bes4. \oneVoice r8 c, ~ <c c'>4 |
  
  \voiceTwo s8 d'4. \oneVoice r8 e, ~ <e e'>4 | % Bar 53
  \voiceOne f8 d'4. f,8 es'4. |
  \oneVoice bes,4( bes') r2 |
  es,4.( bes'8 g' bes es g,) |
  
  f,4.( d'8 f4) r | % Bar 57
  g,4.( e'8 g4) r |
  \voiceOne fis8 a \change Staff = "up" \voiceTwo c2 \change Staff = "down" \oneVoice r4 |
  r8 <bes, bes'>-. <bes, bes'>4.( <d d'>8-.) <bes' bes'>4( ~ |
  
  q8 <d d'>-.) <d, d'>4.( <f f'>8)-. <d' d'>4 ~ | % Bar 61
  q8 <f f'>-. <f, f'>4. <f' f'>8-. <f, f'>4 ~ |
  q8 <es' es'>-. <es, es'>4.-. <c c'>8-. <c, c'>4 |
  
  %%%%%%%%%%
  % Page 7
  %%%%%%%%%%
  
  <bes bes'>4-. <g' g'>-. <bes bes'>-. <g' g'>-. | % Bar 64
  d'4( <g bes d>) r8 \voiceOne d' d es |
  es4 a, \oneVoice r8 \voiceOne a d a |
  d4 g, \oneVoice r8 \voiceOne g c g |

  c8 g b g bes4 g | % Bar 68
  \oneVoice r4 b,,( b') r8 b[( |
  b8 c]) c4( fis,) r8 <fis' ais>[ |
  q8 <g b>] q4. cis,8 cis4 ~ |
  
  cis8 d d4 d,2 | % Bar 72
  \tuplet 3/2 { g,8[( g' d' \tupletNumbersOff
    fis c' \change Staff = "up" fis] c'[ fis, c d c \change Staff = "down" fis,]) } |
  \tuplet 3/2 { b8( g d g d b e c g c g es) } |
  
  <d g d'>4 \tuplet 3/2 { g,8( g' d' f b d g f b, } | % Bar 75
  \tuplet 3/2 { e8 c g c g e g e c) g'( f b, } |
  \tuplet 3/2 { e8 c g es' c g c g es) } r4 |
  
  %%%%%%%%%%
  % Page 8
  %%%%%%%%%%
  
  \tupletNumbersOn
  <d g d'>4 r r \tuplet 3/2 { <g, g'>8( c <g g'> } | % Bar 78
  \tupletNumbersOff
  \tuplet 3/2 { b8) <g g'> d' <b b'> g' <d d'> b' <g g'> d' } <c, g'>4 |
  <g g'>4 r r \tupletNumbersOn \voiceOne \tuplet 3/2 { g'8( c g) } |
  \oneVoice <g, g'>2 r4 <es' g c>( |
  
  <c g' c>4 <es g c> <g d'>) r | % Bar 82
  r4 \voiceOne \tuplet 3/2 { g8( d g) } \oneVoice <fis, fis'>2 |
  r4 <d' fis b>( <b fis' b> <d fis b> |
  <fis cis'>4) r r \voiceOne \tuplet 3/2 { ges8( des ges) } |
  
  <f, f'>4 r r \tupletNumbersOff \tuplet 3/2 { <es'' es'>8-.( a-. <c, c'>-.) } | % Bar 86
  \tuplet 3/2 { f8-.( <a, a'> es'-. <f, f'>-. c'-. <es, es'>-.
    a-. <c, c'>-. es-.) <d d'>( bes' <d, d'>) } |
  \tuplet 3/2 { <es es'>8( bes' <es, es'>) <d d'>( bes' <d, d'>)
    <es es'>[( bes' <es, es'> bes' <es, es'> bes']) } |
}

leftOneVTwo = \relative c {
  \voiceTwo
  es,2 ~ es | % Bar 1
  f2 ~ f |
  s1*5
  
  g4 ges8( es) bes'4 s | % Bar 8
  s1*2 |
  es,4.( d8 f es ~ es4) |
  f4.( e8 g f ~ f4) |
  s1 |
  
  %%%%%%%%%%
  % Page 4
  %%%%%%%%%%
  
  s2 as4. a8 | % Bar 14
  s1*17
  
  %%%%%%%%%%
  % Page 5
  %%%%%%%%%%
  
  s1*17 | % Bar 32
  
  %%%%%%%%%%
  % Page 6
  %%%%%%%%%%
  
  s1*3 | % Bar 49
  bes,2 s2 | % Bar 52
  
  d2 s2 | % Bar 53
  f2 f |
  s1*2 |
  
  s1*2 | % Bar 57
  a4.( fis'8 a4) s4 |
  s1 |
  
  s1*3 | % Bar 61
  
  %%%%%%%%%%
  % Page 7
  %%%%%%%%%%
  
  s1 | % Bar 64
  s2 s8 <g= bes>4 q8 ~ |
  q4 g s8 g4 <f a>8 ~ |
  q4 f s8 f4( <e g>8 ~ |
  
  q8 <es g>4 <d g>8 ~ q4 <cis e>) | % Bar 68
  s1*3 |
  
  s1*3 | % Bar 75
  
  s1*3 | % Bar 78
  
  %%%%%%%%%%
  % Page 8
  %%%%%%%%%%
  
  s1*2 | % Bar 78
  s2. es=,4 |
  s1 |
  
  s1 | % Bar 82
  s4 b=,,4 s2 |
  s1 |
  s2. bes4 |
  
  s1*3 | % Bar 86
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
  \override Voice.Hairpin.to-barline = ##f
  
  s1\p | % Bar 1
  s1*3 |
  
  s1*3 | % Bar 5
  s4\< s4\> s4\! s |
  s4 s2.\pp |
  
  s1 | % Bar 10
  s8 \p s4.-\markup {\italic dol.} s2 |
  s1 |
  s2. s4\< |
  
  s2\! s4. s8\f | % Bar 14
  s1*3 |
  
  s2\f s2\sf | % Bar 18
  s1-\markup {\italic dim.} |
  s1\> |
  s2\! s2 |
  
  s4 s4-\markup {\dynamic p \italic {s. r.}} s2 | % Bar 22
  s1 |
  s2. s4\> |
  s2. s4\! |
  s4 s2.\pp |
  
  s1 | % Bar 27
  s8 s4.\pp s2 |
  s1|
  s1-\markup {\italic dol.} |
  s1 |
  
  %%%%%%%%%%
  % Page 5
  %%%%%%%%%%
  
  s1*2 | % Bar 32
  s1-\markup {\italic dol.} |
  s1*2 |
  
  s2. s4-\markup {\italic cresc.} | % Bar 37
  s2 s8\sf s4.\< |
  s1\f |
  s1\fp |
  
  s4 s4\< s4\> s4 \! | % Bar 41
  s1*2 |
  
  % Bar 44
}
