\version "2.7.39"

\header {
       title = "Harmonic Minor Scales"
       instrument = "Trombone - Harmonic Minor Scales"
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
	

	\key a \minor a1 ^\markup {a Minor} b c d e f gis a a, c e a \break
	\key d \minor d,1 ^\markup {d Minor} e f g a bes cis d d, f a d \break
	\key g \minor g,, ^\markup {g Minor} a bes c d ees fis g g, bes d g \break
	\key c \minor c, ^\markup {c Minor}  d ees f g aes b c c, ees g c \break
	\key f \minor f,, ^\markup {f Minor} g aes bes c des e f f, aes c f \break
	\key bes \minor bes, ^\markup {b\flat Minor} c des ees f ges a bes bes, des f bes \break
	\key ees \minor ees, ^\markup {e\flat Minor} f ges aes bes ces d ees ees, ees ges ees \break	
	\key gis \minor gis, ^\markup {g\sharp Minor} ais b cis dis e fisis gis gis, b dis gis \break
	\key cis \minor cis, ^\markup {c\sharp Minor} dis e fis gis a bis cis cis, e gis cis \break
	\key fis \minor fis, ^\markup {f\sharp Major} gis a b cis d eis fis fis, a cis fis \break
	\key b \minor b,, ^\markup {b Minor} cis d e fis g ais b b, d fis b \break
	\key e \minor e, ^\markup {e Minor} fis g a b c dis e, g b e \break
	\bar "|."



}
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \trombone >>
  
     >>
        \layout { }
        \midi { \tempo 4=120}
     }