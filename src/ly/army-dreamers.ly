\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "Army Dreamers"
}

theme = \relative  {
	\time 3/4
	r4 \mark "Contre chant"
	b\3 a'\1 fis2 a4 cis,2 r4
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

theme = \relative  {
	\time 3/4
	r4 \mark "Couplet"
	\times 2/3 {b8\3 cis d} \times 2/3 {e fis a}
    b4 r8 b8 a b 
	a4 d,8 e d e 
	fis4 r2 
	r4 
	\times 2/3 {b,8\3 cis d} \times 2/3 {e fis a}
    b4 r8 b8 a b 
	a4 d,8 e d e 
	fis4 r2 
}

\baseTab \theme \harmonies

theme = \relative  {
	\time 3/4
	
}

harmonies =  \chordmode {
	\time 3/4
    b2.:m e d fis:m  
	b2.:m e d fis:m  
}


\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
