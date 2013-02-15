\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "Bang Bang"
}

theme = \relative  {
	\time 4/4
    c8 f, gis c bes4 gis4
	<bes,\5 f'\4 bes\3 cis\2>8 f' bes cis c4 bes4
	<c, e g c>8 e g cis c bes gis g
	<f, c' f gis c f>1
	\bar "|:" 
	<f c' f gis c f>8 c''\2 c c cis c c4
	<f,, c' e gis c f>8 c''\2 c c cis c c4
    dis,8\5 g\4 bes\3 bes c\3 c\3 bes4
    c,8\5 e\4 bes'\3 bes c c bes
	
	c16\glissando cis
	f,,8\6 <c' f gis c f> c' c  cis c <c, f gis c f> 
	c'16\2\glissando cis	
	f,,8 <c' f gis c f> c' c  cis c <c, f gis c f> 
	f8\5 
	dis\5 <dis\5 g\4 bes\3> <dis\5 g\4 bes\3> <dis\5 g\4 bes\3> c'\3 bes bes 
	cis,
	c  <c e bes' c> <c e bes' c> <c e bes' c> cis' c bes gis

	<f, c' f gis c f>8
	f' gis c bes4 gis4
	<bes,\5 f'\4 bes\3 cis\2>8 f' bes cis c4 bes4
	<c, e g c>8 e g cis c bes gis g
	<f, c' f gis c f>1
	\bar ":|"
	
    <f c' f gis c f>8 f''\1 f f f g f f 
	<dis,\5 g\4 bes dis> dis' dis dis dis f\2 dis dis
	
    <f, gis cis> <f gis cis> <f gis cis>
	<f gis dis'> <f gis cis> <f gis cis f>
	<f gis cis>4
	<e g c>8 <e g c> <e g c>
	<e g cis> <e g dis'> <e g cis> 
	<e g c>
}

harmonies =  \chordmode {
	\time 3/4
     f1:m bes:m c f:m 
     f:m f:m7maj 
     dis c:7 f:m f:m dis c:7 
     f:m bes:m c f:m 
	f:m dis b:m a:m 
}


\baseTab \theme \harmonies

\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
