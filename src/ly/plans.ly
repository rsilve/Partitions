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



\include "common/licence.ly"

