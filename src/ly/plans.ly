\include "common/functions.ly"
\include "common/baselayout.ly"

\header{ title = "Plans" }


\version "2.12.3"  % necessary for upgrading to future LilyPond versions.



\score {


\baseTab 
	\relative {
		\time 4/4 \bar "|:" 
		d,8\5 e\5 a\4 c\3 d\3 f\2 a c
		gis f\2 cis\3 gis\4 g\4 f\5 d\5 ees\5 
		e1\5~e1\5 \bar ":|" 
	}
	\chordmode {
	\set majorSevenSymbol = \markup { 7M } \time 4/4
     d1:m9 g:7.5+ c:maj7 c:maj7 
	}


}


\score {

\baseTab 
	\relative  {
		\time 4/4\bar "|:"
		d,8\5 e f g\4 a c\3 a ais 
		b\3 cis\3 ees\2 f\2 g ges g f\2 
		e1\2~e1\2 \bar ":|" 
	}
	\chordmode {
		\set majorSevenSymbol = \markup { 7M } \time 4/4
     	d1:m9 g:7.5+ c:maj7 c:maj7 
	}


}



\score {


\baseTab 
 	\relative  {
		\time 4/4 \bar "|:"
		d,8\6 e\5 f\5 g\5 a\4 c\4 a\4 ais\4
		b\4 g'\2 f4\3 d\3 dis\3 
		e1\3~e1\3 \bar ":|" 
	}
	\chordmode {
		\set majorSevenSymbol = \markup { 7M } \time 4/4
     	d1:m9 g:7.5+ c:maj7 c:maj7 
	}
}


\score {


\baseTab 
 	\relative  {
		\time 4/4 \bar "|:"
		a'8\1 f\2 d\3 a\4 g\4 e\5 d\5 b\5
		g\6 gis\6 b\5 d\5 f\4 gis\4 b\3 f'\2 
		e1\2~e1\2 \bar ":|" 
	}
	\chordmode {
		\set majorSevenSymbol = \markup { 7M } \time 4/4
     	d1:m9 g:7.5+ c:maj7 c:maj7 
	}
}

\score {

\baseTab 
 	\relative  {
		\time 4/4 \bar "|:"
		f,8 a c\3 e\2 g f\2 e\2 d dis
		b\3 bes gis\4 f4 fis4 g1\4~g1\4
		\bar ":|" 
	}
	\chordmode {
		\set majorSevenSymbol = \markup { 7M } \time 4/4
     	d1:m9 g:7.5+ c:maj7 c:maj7 
	}
}

\score {

\baseTab 
 	\relative  {
		\time 4/4 \bar "|:"
		e8\2 d c\3 a g\4 ges f d\5 
		b4 gis fis g8 b c1~c1
		\bar ":|" 
	}
	\chordmode {
		\set majorSevenSymbol = \markup { 7M } \time 4/4
     	d1:m9 g:7.5+ c:maj7 c:maj7 
	}
}


\score {


\baseTab 
 	\relative  {
		\time 4/4 \bar "|:"
		ges,8 g b d\5 f g\4 b\3 d f\2 a aes g
		f\2 d b\3 g\4 fis f d\5 b 
		gis ges g4 
		\bar ":|" 
	}
	\chordmode {
		\time 4/4
     	g1:7  
	}
}


\score {


\baseTab 
	\relative {
		\time 4/4 \bar "|:" 
		a,8\6 b\5 c d\5 e\4 g\4 e f fis\4
		gis\4 bes\3 c\3 d\2 ees\2 d c\3 b1\3~b1\3
		 \bar ":|" 
	}
	\chordmode {
	\set majorSevenSymbol = \markup { 7M } \time 4/4
     a1:m9 d:7.5+ g:maj7 g:maj7 
	}


}





\include "common/licence.ly"

