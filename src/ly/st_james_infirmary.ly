\include "common/functions.ly"
\include "common/baselayout.ly"


\header{
  title = "St Jame Infirmary"
}


theme = \relative  { \time 4/4 
				\partial 8 e,16\4 g\3
				b2\2 b8\2 a\3 b\2 a\3 
				r2 r4 r8 e16\4 g\3
				b2\2 e4\1 c\2 
				b2\2 r4 r8 e,16\4 g\3
				b2\2 b8\2 a\3 b\2 a\3 
				r1
				e8\4 bes'\3 b\2 bes\3
				ees,8\4 a\3 b\2 a\3
				<<e2\4 g2\3 b2\2>> <<ees,4\4 a4\3 b4\2>> r8 e,16\4 g\3
			}
bass = \relative { \time 4/4 
				\partial 8 r8
				e,,4\6 g b4\5 fis\6 
				e4\6 g\6 b\5 fis\6
				e4\6 g a4\5 c\5 
				e,4\6 g\6 b\5 fis\6
				e4\6 g b4\5 fis\6 
				e4\6 g4\6 e4\6 g4\6
				c4\5 g\6 b4\5 fis\6 
				e4\6 g4\6 b4\5 fis4\6r
			}


\score {
<<
	\set Score.proportionalNotationDuration = #(ly:make-moment 1 8)
    \new Staff    { \clef "G_8" << \theme \\ \bass>> }
	\new TabStaff { \stemOff \override Beam #'transparent = ##t
	    << 
		\context TabVoice \bass
		\context TabVoice \theme 
		>> 
	 }
>>
}




\include "common/licence.ly"



\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
