\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "Clandestino"
}

theme = \relative  {
	\time 4/4
	r2 
	cis8 cis cis c cis d cis4
	cis8 cis d cis b a gis4
	d'8\2 d d cis d cis gis
	b8 cis cis cis b a b cis 4
}

harmonies =  \chordmode {
	\time 4/4
     fes1:m fes:m b:m ces:7
	fes1:m fes:m b:m ces:7

}


\baseTab \theme \harmonies

\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
