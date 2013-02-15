\header{
  title = "Plans"
}

\paper {
  #(define indent (* 0 cm))
  ragged-last=##f	
}

\version "2.12.3"  % necessary for upgrading to future LilyPond versions.


\score {

theme = \relative  {
	\time 4/4
 	\bar "|:" 
	d,8\5 e\5 a\4 c\3 d\3 f\2 a c
	gis f\2 cis\3 gis\4 g\4 f\5 d\5 ees\5 
	e1\5~e1\5 
	\bar ":|" 
}

harmonies =  \chordmode {
	\set majorSevenSymbol = \markup { 7M }
	\time 3/4
     d1:m9 g:7.5+ c:maj7 c:maj7 
}



<<
   
   \set Score.proportionalNotationDuration = #(ly:make-moment 1 8)

   \new ChordNames {
    \set chordChanges = ##t
    \harmonies
   }

   \new Staff {
      \clef "G_8"  \theme
   }

   \new TabStaff {
		\theme
  }

>>

}


\score {

theme = \relative  {
	\time 4/4
	\bar "|:"
	d,8\5 e f g\4 a c\3 a ais 
	b\3 cis\3 ees\2 f\2 g ges g f\2 
	e1\2~e1\2
	\bar ":|" 
}

harmonies =  \chordmode {
	\set majorSevenSymbol = \markup { 7M }
	\time 3/4
     d1:m9 g:7.5+ c:maj7 c:maj7 
}



<<
   
   \set Score.proportionalNotationDuration = #(ly:make-moment 1 8)

   \new ChordNames {
    \set chordChanges = ##t
    \harmonies
   }

   \new Staff {
      \clef "G_8"  \theme
   }

   \new TabStaff {
		\theme
  }

>>

}



\score {

theme = \relative  {
	\time 4/4
	\bar "|:"
	d,8\6 e\5 f\5 g\5 a\4 c\4 a\4 ais\4
	b\4 g'\2 f4\3 d\3 dis\3 
	e1\3~e1\3
	\bar ":|" 
}

harmonies =  \chordmode {
	\set majorSevenSymbol = \markup { 7M }
	\time 3/4
     d1:m9 g:7.5+ c:maj7 c:maj7 
}



<<
   
   \set Score.proportionalNotationDuration = #(ly:make-moment 1 8)

   \new ChordNames {
    \set chordChanges = ##t
    \harmonies
   }

   \new Staff {
      \clef "G_8"  \theme
   }

   \new TabStaff {
		\theme
  }

>>

}

\markup {
\abs-fontsize #9
\column {
\line { This work is licensed under the Creative Commons Attribution 3.0 Unported License.}
\line { To view a copy of this license, visit http://creativecommons.org/licenses/by/3.0/ }
\line {or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA. }
}
}


