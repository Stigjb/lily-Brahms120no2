\version "2.12.3"

clarinetOne = \relative c'' {
  \transposition bes
  
  f4.(\p e8 g f a, d) | bes2( e,4) r8 d8( |
  f4. c8 c'4) r8 e,( | g4. d8 d'4) r8 g,( |
  bes'4. a8) fis( g) a,( bes) |
  
  f'4.( e8) cis( d) fis,( g) | f!4( ~ f16 e g bes) d8( des) des( c) |
  c8(\< b\! c\> as\! g4) r8 g,(_\markup { \italic più \dynamic p } |
  \override TupletBracket #'bracket-visibility = #'if-no-beam
  \times 2/3 { bes'8[ a! fis } \times 2/3 { g a, bes]) }
    \times 2/3 { f'[( e cis d } \times 2/3 { fis, g]) } |

  f!4(^\markup { \italic dolce } ~ f16 e g bes c e g bes \times 4/5 { c e g bes d } |
  c4) r r8 c,,(\p\< a'\> d)\! |
  bes4 r r8 bes,(\< e\> d')\! |
  c4 r8 c,( c' f4 e8) |
  
  d4\< r8 d,( d' g4 f8)\! | e4 r r2 |
  R1*2
  c'4.(\f b8 d c es, as) |
  \times 2/3 { g( f e! } g16 f as, d) \times 2/3 { c8( bes a } c16 bes des, g) |
  
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times 2/3 { f8( es d! f es d) } f8(_\markup { \italic dim. } es4\> c8) ~ |
  c2( fis,4)\! r |
  g4(\p g')_\markup {\italic {s. v.}} r8 g( g a!) |
  a4( d,) r8 d( g d) |
  
  e4.( c8) c4.( b8) | b4( c d) r |
  d'4(\pp es f) r | bes,,!4(\< c\! d4.\> g,8)\! |
  g4.( g'8) g4( a) | a4( d,) d4.( e8) |
  
  e4(^\markup {\italic dolce} ~ \times 2/3 {e8 f d)} c4( ~ \times 2/3 {c8 b d)} |
  a4( as) g8( c e g) |
  g4( ~ \times 2/3 {g8 a f)} e4( ~ \times 2/3 {e8 d f)} |
  b,4( a) g8( b)_\markup {\italic dim.} b( e) |
  
  e4(\> g2)\! r4 | r2 r4 r8 e |
  e4( ~ \times 2/3 {e8 f d)} c4( ~ \times 2/3 {c8 b d)} |
  \override TupletNumber #'stencil = ##f
  \times 2/3 {e8(_\markup {\italic cresc.} f d c b d) f( g e d cis e)}|
  
  g16(\< a d, f) a( d f a) d4.(\f\> b8)\! | R1
  r4 c(\f b f) |
  b8( a e a) g4( d) |
  r8 e( f c) e16(\< d as d) g,( c e g)\! |
  
  c4\f fis,,,( g f) |
  \override TupletNumber #'stencil = ##t
  \times 2/3 {e8[( g c} \times 2/3 {e g e])} f4 r |
  \times 2/3 {e,8[( a b} \times 2/3 {c e c])} d4 r |
  R1*2
  
  % Page 2
  
  r2 f,4( f')_\markup {\italic dim.} |
  r2 a,4( a') | r2 c,4( c') | r2 g4( g') ~ |
  g4.(\p fis8 a g b, e) |
  d8( c4 b8 d c e, b') |

  a8(\< g4 fis8) a( g4 fis8)\! |
  \times 2/3 { a8(\> g fis) a( g e) }  d8( c) c( bes!)\! |
  a8(\p c a'2) r4 |
  e,8( g bes2) r4 |
  c''2( fis,4) r8 d,( |
  f!2.) r4 | R1*3 |
  
}
