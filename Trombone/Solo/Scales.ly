\version "2.7.39"

\header {
       title = "Major Scales"
       instrument = "Trombone - Major Scales"
       copyright = "Public Domain"
       Composer = "Jonas Williamson"
}


     global = {
        \time 4/4
	\tempo 4=60
	
}
   
\layout{
  \context { \Score
    \override MetronomeMark #'extra-offset = #'(-9 . 0)
    \override MetronomeMark #'padding = #'3
  }}
  
\paper {
  between-system-padding = #1
  ragged-bottom=##f
  ragged-last-bottom=##f
 #(set-paper-size "letter")
}
     
   trombone = \relative c {
        \set Staff.instrument = "C BC " \set Staff.midiInstrument = "trombone" \transposition c'
        \clef bass \key c \major 
	%\override TextScript #'padding = #3				%Raises Text to keep from running into bar numbers.
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1) %tunes staff spacing
	

	\key c \major c1 ^\markup {C Major} d e f g a b c c, e g c \break
	\key f \major f,1 ^\markup {F Major} g a bes c d e f f, a c f \break
	\key bes \major bes,, ^\markup {B\flat Major} c d ees f g a bes bes, d f bes \break
	\key ees \major ees, ^\markup {E\flat Major} f g aes bes c d ees ees, g bes ees \break
	\key aes \major aes,, ^\markup {A\flat Major} bes c des ees f g aes aes, c ees aes \break
	\key des \major des, ^\markup {D\flat Major} ees f ges aes bes c des des, f aes des \break
	\key ges \major ges,, ^\markup {G\flat Major} aes bes ces des ees f ges ges, bes des ges \break	
	\key b \major b, ^\markup {B Major} cis dis e fis gis ais b b, dis fis b \break
	\key e \major e, ^\markup {E Major} fis gis a b cis dis e e, gis b e \break
	\key a \major a,, ^\markup {A Major} b cis d e fis gis a a, cis e a \break
	\key d \major d, ^\markup {D Major} e fis g a b cis d d, fis a d \break
	\key g \major g, ^\markup {G Major} a b c d e fis g g, b d g \break
	
	\bar "|."


}
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \trombone >>
  
     >>
        \layout { }
        \midi { \tempo 4=120}
     }