\version "2.12.3"

\include "global.ly"

clarinetOne = \relative c'' {
  \transposition bes
  
  % Bar 1
  f4.(\p e8 g f a, d) |
  bes2( e,4) r8 d8( |
  f4. c8 c'4) r8 e,( |
  g4. d8 d'4) r8 g,( |
  bes'4. a8) fis( g) a,( bes) |
  
  % Bar 6
  f'4.( e8) cis( d) fis,( g) |
  f!4( ~ f16 e g bes) d8( des) des( c) |
  c8(\< b\! c\> as\! g4) r8 g,(_\markup { \italic più \dynamic p } | 
  \override TupletBracket #'bracket-visibility = #'if-no-beam
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times 2/3 { bes'8[ a! fis g a, bes]) f'[( e cis d fis, g]) } |

  % Bar 10
  f!4(^\markup { \italic dolce } ~ f16 e g bes c e g bes \times 4/5 { c e g bes d } |
  c4) r r8 c,,(\p\< a'\> d)\! |
  bes4 r r8 bes,(\< e\> d')\! |
  c4 r8 c,( c' f4 e8) |
  
  % Bar 14
  d4\< r8 d,( d' g4 f8)\! |
  e4 r r2 |
  R1*2
  c'4.(\f b8 d c es, as) |
  \times 2/3 { g( f e! } g16 f as, d) \times 2/3 { c8( bes a } c16 bes des, g) |
  
  % Bar 20
  \times 2/3 { f8( es d! f es d) } f8(_\markup { \italic dim. } es4\> c8) ~ |
  c2( fis,4)\! r |
  g4(\p g')_\markup {\italic {s. v.}} r8 g( g a!) |
  a4( d,) r8 d( g d) |
  
  % Bar 24
  e4.( c8) c4.( b8) |
  b4( c d) r |
  d'4(\pp es f) r |
  bes,,!4(\< c\! d4.\> g,8)\! |
  g4.( g'8) g4( a) |
  a4( d,) d4.( e8) |
  
  % Bar 30
  e4(^\markup {\italic dolce} ~ \times 2/3 {e8 f d)} c4( ~ \times 2/3 {c8 b d)} |
  a4( as) g8( c e g) |
  g4( ~ \times 2/3 {g8 a f)} e4( ~ \times 2/3 {e8 d f)} |
  b,4( a) g8( b)_\markup {\italic dim.} b( e) |
  
  % Bar 34
  e4(\> g2)\! r4 |
  r2 r4 r8 e |
  e4( ~ \times 2/3 {e8 f d)} c4( ~ \times 2/3 {c8 b d)} |
  \tupletNumbersOff
  \times 2/3 {e8(_\markup {\italic cresc.} f d c b d) f( g e d cis e)}|
  
  % Bar 38
  g16(\< a d, f) a( d f a) d4.(\f\> b8)\! |
  R1 |
  r4 c(\f b f) |
  b8( a e a) g4( d) |
  r8 e( f c) e16(\< d as d) g,( c e g)\! |
  
  % Bar 43
  c4\f fis,,,( g f) |
  \tupletNumbersOn
  \times 2/3 {e8[( g c} \times 2/3 {e g e])} f4 r |
  \times 2/3 {e,8[( a b} \times 2/3 {c e c])} d4 r |
  R1*2
  
  %%%%%%%%%%
  % Page 2
  %%%%%%%%%%
  
  % Bar 48
  r2 f,4( f')_\markup {\italic dim.} |
  r2 a,4( a') |
  r2 c,4( c') |
  r2 g4( g') ~ |
  g4.(\p fis8 a g b, e) |
  d8( c4 b8 d c e, b') |

  % Bar 54
  a8(\< g4 fis8) a( g4 fis8)\! |
  \times 2/3 { a8(\> g fis) a( g e) }  d8( c) c( bes!)\! |
  a8(\p c a'2) r4 |
  e,8( g bes2) r4 |
  c''2( fis,4) r8 d,( |
  
  % Bar 59
  f!2.) r4 |
  R1*3 |
  a'4.\f( gis8 b a c, f) ~ |
  \times 2/3 {f8 e( dis) f( e dis)} fis16( e c a fis e c a) |
  e2\fp e |
  e2 e |
  
  % Bar 67
  e2 e |
  e2 r |
  e4( e') r8 e( e f |
  f4 b,) r8 dis'( dis e) |
  e4.\<( a8\!) a4.\>( cis,8\!) |
  cis4( e2) e4 ~ |
  e4 r r gis,8(_\markup {\italic dol.} cis |
  
  % Bar 74
  b8[ a]) cis,[( fis e d]) \times 2/3 {a8( d a)} |
  cis4 r r cis'8( fis |
  e8[ d]) a[( d cis b]) a4_\markup {\italic dim.} ~ |
  a4 a2 \times 2/3 {a,8\p( d a} |
  \tupletNumbersOff
  \times 2/3 {cis8-.)(^\markup {\italic dol.} a-. e'-. cis-. a'-. e-. cis'-. a-. e'-.)} g!8\>( f!\!) |
  
  % Bar 79
  e4 r r \times 2/3 {a,,8( d a}
  \times 2/3 {cis8) a e' cis a' e cis'_\markup {\italic {poco cresc.}} a e'} r4 |
  \times 2/3 {cis,8 a' e cis' a e' cis a' e} r4 |
  r2 \times 2/3 {cis8_\markup {\italic dim.} e, a cis, e a,} |
  
  % Bar 83
  \times 2/3 {cis8 e, a} r4 \times 2/3 {c8 as' es c' as es'} |
  \times 2/3 {c8 as' es} r4 r2 |
  \times 2/3 {es8 as, c es, as c, es as, c} r4 |
  \times 2/3 {b8\< g' d b' g d' b g' d\!} r4 |
  
  % Bar 87
  r2 r4 c'8\f( b) |
  b8( a) c( b) b4( a) |
  g4.\f( fis8) a( g4.) ~ |
  g8 fis( g gis) bes!( a4.) ~ |
  a8 gis( a c) b2 |
  
  % Bar 92
  \tupletNumbersOn
  \times 2/3 {b8-.\f[( e-. b-. d-. g,-. c-.]) \tupletNumbersOff
              b,-.[( e-. b-. e-. b-. d-.])} |
  c4 r r fis,8\<(^\markup {\italic espress.} b\! |
  a8\> gis4.\!) gis8(_\markup {\italic cresc.} cis b a) |
  gis4. a8( dis cis bis) gis( |
  
  % Bar 96
  e'!8 d! cis) r r2 |
  r2 c!4\<( es\>) ~ |
  es8\! r r4 r2 |
  r2 e!4\p\<( g\> ~ |
  g4\! d\<( e) f!\! ~ |
  f4 bes\>( a\!) d,(_\markup {\italic {molto dolce}} |
  c4. b8) e4.( d8) |
  
  % Bar 103
  f4.\p( e8 g f a, d) |
  bes2( e,4) r8 d( |
  f4. c8 c'4) r8  e,( |
  g4. d8 d'4) r8 g,( |
  bes'4. a8 fis g) a,( bes) |
  
  % Bar 108
  f'4.( e8 cis d) fis,( g) |
  f!4( ~ f16 e g bes) d8( des) des( c) |
  c8(\< b\! c\> as\!) g4 r8 g,(_\markup { \italic più \dynamic p } |
  \tupletNumbersOn
  \times 2/3 { bes'8[ a! fis g a, bes])
               \tupletNumbersOff f'[( e cis d fis, g]) } |
  
  %%%%%%%%%%
  % Page 3
  %%%%%%%%%%
  
  % Bar 112
  \override TupletNumber #'stencil = ##t
  f!4(^\markup { \italic dol. } ~ f16 e g bes c e g bes
    \times 4/5 { c e g bes d } |
  c4) r r f,( |
  d'4. a8 c bes d, g) |
  f4 r8 b( d[ c \times 2/3 {e,! a g])}
  f4 r r2 |
  
  % Bar 117
  r8 bes4\f( a8 c bes des, g) |
  \times 2/3 {f( es d!
              \override TupletNumber #'stencil = ##f
              f es c) bes(_\markup {\italic dim.} as g! bes as ges)} |
  es8 c bes2\<( as4\>) |
  as4\!( as') r8 as\<( as bes\! |
}
