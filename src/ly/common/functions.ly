stemOn = { \revert Staff.Stem #'transparent } 

stemOff = { \override Staff.Stem #'transparent = ##t }

baseTab = #(define-music-function (parser location arg1 chords) (ly:music? ly:music?) #{

<< \set Score.proportionalNotationDuration = #(ly:make-moment 1 8) \new ChordNames { \set chordChanges = ##t
$chords } \new Staff { \clef "G_8" $arg1 } \new TabStaff { $arg1 } >>

 #})

simpleTab = #(define-music-function (parser location arg1) (ly:music?) #{

<< \set Score.proportionalNotationDuration = #(ly:make-moment 1 8) \new TabStaff { $arg1 } >>

 #})

tabAndNote = #(define-music-function (parser location arg1) (ly:music?) #{

<< \set Score.proportionalNotationDuration = #(ly:make-moment 1 8) 
\new Staff { \clef "G_8" $arg1 } \new TabStaff { $arg1 } >>

 #})
