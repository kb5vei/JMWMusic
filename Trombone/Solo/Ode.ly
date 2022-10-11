\version "2.10.16"

\header {
       title = "Theme and Variations"
       instrument = "Trombone"
       copyright = "Creative Commons Noncommercial Attribution Share-Alike Licensed, 2007"
       composer = "Jonas Williamson"
       subtitle = "on Ode to Joy"
       subsubtitle = "Based on L. V. Beethoven, Ode to Joy, c 1800"
}


     global = {
        
	\tempo 4=120
	
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
        \clef bass \key bes \major 
	%\override TextScript #'padding = #3				%Raises Text to keep from running into bar numbers.
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1) %tunes staff spacing
	\time 4/4

	d4 d ees f 
	f ees d c
	bes bes c d
	d4. c8 c2

	d4 d ees f
	f ees d c
	bes bes c d
	c4. bes8 bes2

	c4 c d bes
	c4 d8 ees d4 bes
	c d8 ees d4 c
	bes c f,2
	
	d'4 d ees f
	f ees d c
	bes bes c d
	c4. bes8 bes2 	\bar "||" \break

	\mark \default
	\times 2/3 {d4 ees f} \times 2/3 { ees f g}
	\times 2/3 { f ees d}  \times 2/3 {ees d c }
	\times 2/3 {bes c d} \times 2/3 { c d ees }
	\times 2/3 {d c bes} c2

	\times 2/3 {d4 ees f} \times 2/3 {c d ees} 
	\times 2/3 { f ees d}  \times 2/3 {ees d c }
	\times 2/3 {bes c d} \times 2/3 { c d ees }
	\times 2/3 {d c bes} bes2

	\times 2/3 {c4 c c} \times 2/3 { d bes bes } 
	\times 2/3 { c d ees} \times 2/3 {d c bes }
	\times 2/3 { c d ees} \times 2/3 { d d c }
	\times 2/3 { bes c d} f,2

	\times 2/3 {d'4 ees f} \times 2/3 {c d ees}
	\times 2/3 { f ees d}  \times 2/3 {ees d c }
	\times 2/3 {bes c d} \times 2/3 { c d ees }
	\times 2/3 {d c a } bes2 \bar "||" \break

	\mark \default
	

	\time 6/4 \tempo 4 = 220
	d'2 d4 ees2 f4
	f2 ees4 d2 c4
	bes2 bes4 c2 d4
	d2 c4 bes2 a4
	g2 g4 a2 bes4
	bes2 a4 g2 f4
	ees2 d4 c2 bes4
	f'2 f4 f2 r4 
	d'2 d4 ees2 f4
	f2 ees4 d2 c4
	bes2 bes4 c2 d4 
	d2 c4 bes2 a4 
	g2 g4 a2 bes4 
	bes2 a4 g2 f4
	ees2 d4 c2 g'4
	f2 f4 f2 r4

	d'2 d4 ees2 f4
	f2 ees4 d2 c4
	bes2 bes4 c2 d4
	d2 c4 bes2 a4
	g2 g4 a2 bes4
	bes2 a4 g2 f4
	ees2 d4 c2 bes4
	f'2 f4 f2 r4 
	
	c'2 c4 d2 bes4
	c2 ees4 d2 bes4
	c2 ees4 d2 c4
	bes2 c4 f2.
	
	d2 d4 ees2 f4
	f2 ees4 d2 c4
	bes2 bes4 c2 d4
	d2 c4 bes2 a4
	g2 g4 a2 bes4
	bes2 a4 g2 f4
	ees2 d4 c2 a4
	bes1.
	

	\bar "|."


}
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \trombone >>
  
     >>
        \layout { }
        \midi { \tempo 4=120}
     }