\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "Walking on the moon (interprétation Roseaux)"
}

theme = \relative  {
	\time 4/4
	des8 des b e des a fis
	a a aes e cis
}

harmonies =  \chordmode {
	\time 4/4 
	des1:m e 
}


\baseTab \theme \harmonies

\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
