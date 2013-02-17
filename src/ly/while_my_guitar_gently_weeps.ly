\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "While my guitar gently weeps"
}

theme = \relative  {
	\time 4/4
	<a, e' a>4 e' a b8( c)
	<g, e' a>4 e' a b8( c)
	<fis,, d' a>4 e' a b8( c)
	<fis,, d' a d'>8( <fis d' a c'>) <fis d' a b'>4 <f d' a c'>2 
}

harmonies =  \chordmode {
	\time 3/4
     a1:m a:m/g d/fis f:7maj a:m g d e
     a:m a:m/g d/fis f:7maj a:m g c e
     a cis:m fis:m cis:m b:m b:m e e
     a cis:m fis:m cis:m b:m b:m e2 e2/fis e2/g e2/gis 
}


\baseTab \theme \harmonies

\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
