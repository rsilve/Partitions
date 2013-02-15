\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "Just a gigolo"
}

theme = \relative  {
 \partial 8 bes8
% A
 	c8 c c c c4 c 
    bes8 bes bes bes bes4 bes4 
 	aes2 bes2 
    aes8 f ees2.
	bes'8 bes bes bes bes4 bes 
    aes8 aes aes aes aes4 aes
	g2 aes 
    g4 f ees2
% B 
	ees'8 ees ees ees ees4 ees4 
	des8 des des des des4 des4 
	c4 \times 2/3 {f,8 a c} ees4 des8 c 
    bes2. bes8 c 
	des4 des des
	c8 bes8 c c c des f2
	f4 ees4 ees4 c8 bes aes1   
}

harmonies =  \chordmode {
     \partial 8 r8
     aes1 aes:7maj aes2:6 b:dim bes:m ees:7
	 bes1:m bes:7m ees2:7 ees:5+ aes1
	 aes1:7 fis:7 f:7 bes:m 
	 bes2:7m cis:6m aes bes:7 bes:m ees:7 aes1
}

\baseTab \theme \harmonies

\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
