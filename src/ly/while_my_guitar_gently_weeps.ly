\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "While my guitar gently weeps"
}

theme = \relative  {
	\time 4/4
	\repeat volta 2 { 
		<a, e' a>4 e' a b8( c)
		<g, e' a>4 e' a b8( c)
		<fis,, d' a'>4 e' a b8( c)
		<fis,, d' a' d>8( <fis d' a' c>) <fis d' a' b>4 <f d' a' c>2 
		<a\5 g'\4 c\3 e\2>4 g'8\4 c\3 e\2 c\3 a4\4
		<g,\6  g'\4 b\3 d\2> g'8\4 b\3 d\2 b\3 g4\4 
	
		
	}
	\alternative {
		{
			<d\4 a'\3 d\2> d'8 a d c b4
			<e,,\6 b'\5 e\4 gis\3 b\2 e\1>1\arpeggio
		}
		{
			<c'\5 c'\2 >4 e8 g c g e4 
			<e,\6 b'\5 e\4 gis\3 b\2 e\1>1\arpeggio
		}
	}
	\repeat volta 2 {
	<a e' a cis>4 e'8 a cis4 b8( cis) 
	<cis, cis'\3 e\2 gis>8 cis'4\3 e\2 gis e8\2
	<fis,, cis' fis a cis>4 fis'8 a cis4 b8( cis) 
	<cis, gis'\4 cis\3 e\2>8 gis'4\4 cis\3 e\2 cis8\3
	<b, fis' b\3 d\2>4 fis'8 b\3 d\2 b\3 fis4
	b,4 fis''8\1 fis,\4 d'\2 b\3 fis4
	e,4 e'8 gis fis,4 e'8 gis g,4 e'8 gis gis,4 e'8 gis
	}
}

harmonies =  \chordmode {
	\time 3/4
    \repeat volta 2 { a1:m a:m/g d:7/fis f:7maj a:m g }
	\alternative { { d e } { c e } }
    \repeat volta 2 { a cis:m fis:m cis:m b:m b:m e2 e2/fis e2/g e2/gis } 
}


\baseTab \theme \harmonies

\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
