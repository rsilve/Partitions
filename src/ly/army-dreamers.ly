\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "Army Dreamers"
}

theme = \relative  {
	\time 3/4
	r4 \mark "contre chant"
	b\3 a'\1 g2 a4 cis,2 r4
	r8 cis8 d cis d cis 
	r4 b\3 d cis2 d4 fis,2 r4
	r8 cis'8 d cis d cis 
	
	
		
}

harmonies =  \chordmode {
	\time 3/4
    b2.:m e:m fis:m a 
	b2.:m e:m fis:m a 
}


\baseTab \theme \harmonies

\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
