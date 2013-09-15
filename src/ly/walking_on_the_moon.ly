\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "Walking on the moon (interprétation Roseaux)"
}

couplet = \relative  {
	\time 4/4
	r16 
	\mark "Couplet"
	des des8 b e des a fis4 r16
	a a8 aes e cis4 r 
	r16 des' des8 b e des a fis4 r16
	a a8 aes e cis4 r 
	r16 des' des8 b e des a fis4 r16
	a a8 aes e cis4 r 
	r16 des' des8 b e des a fis4 r16
	a a8 aes r8 a a8 aes e cis2 
	r2 r1 r1 r1 
}

refrain = \relative  {
	\time 4/4
	e4.\2 \mark "Refrain"
	gis8 b,2\3 r16 fis'16\2 fis\2 fis\2 e4 gis fis\2   
	e4.\2 gis8 b,2\3 r16 fis'16\2 fis\2 fis\2 e4 gis fis\2   
	e4.\2 gis8 b,2\3 r16 fis'16\2 fis\2 fis\2 e4 gis fis\2   
	e4.\2 gis8 b,2\3 e4\2 fis\2 e\2  fis\2 
	r1 r1 

}


bass = \relative  {
	\time 4/4
	gis,8 des' b e,16 gis
	gis8 des' b e,16 gis	
	gis8 des' b e,16 gis
	gis8 des' b e,16 gis	
}

harmoniesCouplet =  \chordmode {
	\time 4/4 
	des1:m des1:m des1:m des1:m
	des1:m des1:m des1:m des1:m
	fis1:m fis1:m 
	des1:m des1:m 
}

harmoniesRefrain =  \chordmode {
	\time 4/4 
	a2 e2 b2 fis2:m 
	a2 e2 b2 fis2:m 
	a2 e2 b2 fis2:m 
	a2 e2 b2 fis2:m 
	
	des1:m des1:m 
	
}




\score { \baseTab \couplet \harmoniesCouplet }
\score { \baseTab \refrain \harmoniesRefrain }

%\score { \simpleTab \bass }



  




\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
