\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "La javanaise"
}

theme = \relative  {
	\time 3/4
	\bar "|:"
	e,4\4 <g d'> <g c>
	ees4\4 <g d'> <g c>
	d4\4 <g d'> <g c>
	g,\6  <g' b>2
	\bar ":|"\break
	c,8\5 e g c d c 
	d c d c b4
	f,4\6 <a' b> <a c>
	f,4\6 <a' c>2
	f,8\6 d' a' d e d
	e d e d b4
	c,4 <e g c> <g c e>
	e8 g c g e4
	c4 <g' b e>8 <g b e>8 <g b e>8 <g b e>8
	c,4 <bes' d g>8 <bes d g>8 <bes d g>8 <g b e>8
	\set minimumFret = 8
	f4 <c' e g>2
	f,4 <a\4 c\3 f\2>2
	\set minimumFret = 5
	<e gis c e>8 gis c e fis \glissando gis
	\set minimumFret = 7	
	<e, b' d gis>4 
	\set minimumFret = 1
	e'8\2 d d \glissando c	
	a,\5 <e' a c> <e a c> <e a c> g,\6 <e' a c> 
	fis,4\6 <e' a c> <e a b\2> 

}

harmonies =  \chordmode {
	\time 3/4
     
}


\baseTab \theme \harmonies

\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
