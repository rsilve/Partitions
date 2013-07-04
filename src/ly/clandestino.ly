\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "Clandestino"
}

theme = \relative  {
	\time 4/4
	r4 r8  
	cis8 cis8 cis c cis d8 cis4
	cis16 cis d8 cis b a gis4 r8
	d'8\2 d d cis d cis4  r8
    cis16 cis cis8 b a b cis4 r8

	cis8 cis8 cis c cis d8 cis4
	cis16 cis d8 cis b a gis4 r8
	d'8\2 d d cis d16 cis gis4 r8
    cis16 cis cis8 b a b cis4 r8

	fis,16\4 a cis8 cis c cis d8 cis4
	cis16 cis d8 cis b a gis4 r8
	d'8\2 d d cis d16 cis gis4 r8
    cis16 cis cis8 b a b cis4 r8

	fis,8\4 a cis cis a fis r8
	fis8\4 a cis cis a cis d4 r8
	d8\2 d d cis d16 cis gis4 r8
	d'8\2 d8 cis b a d4 r8
	cis8 cis8 cis c cis d8 cis4
	cis16 cis d8 cis b a gis4 r8
	d'8\2 d d cis d cis4  r8
    cis16 cis cis8 b a b cis4 r8

	cis8 cis8 cis c cis d8 cis4
	cis16 cis d8 cis b a gis4 r8
	d'8\2 d d cis d16 cis gis4 r8
    cis16 cis cis8 b a b cis8 r8

    cis8 cis b b f' f fis r8
	cis8 cis b b f' f fis r8
	cis8 cis b b f' f fis r8
	cis8 cis b b f' f fis r8
}

harmonies =  \chordmode {
	\time 4/4
     fes1:m fes:m b:m ces:7
	 fes1:m fes:m b:m ces:7
     fes1:m fes:m b:m ces:7
     fes1:m fes:m b:m ces:7
     fes1:m fes:m b:m ces:7
     fes1:m fes:m b:m ces:7
     fes2:m ces:7 fes2:m ces:7
	 fes2:m ces:7 fes2:m ces:7
	 fes1:m
}


\baseTab \theme \harmonies

\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
