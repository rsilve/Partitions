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
	f4\5 <c'\4 e\3 g\2>2
	f,4\5 <a\4 c\3 f\2>2

}

harmonies =  \chordmode {
	\time 3/4
     
}


\baseTab \theme \harmonies

\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
