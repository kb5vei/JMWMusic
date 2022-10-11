\version "2.19.46"

\header {
       title = "Chorando Se Foi Lambada"
       subtitle  = "Lambada"
       instrument = "Trombone"
       copyright = ""
       composer = "Kaoma"
       arranger = "arr. Jonas Williamson"
}


     global = {
        \time 4/4
	\tempo 4=120
	
}
     

	

     
     trombone =  \relative c {
        \set Staff.instrument = "Trombone " \set Staff.midiInstrument = "trombone"
        \clef bass \key bes\major 
	\compressFullBarRests
	\repeat volta 2 {
	d'4. c8 bes a g4 
	g8 bes a g f g d  c
	d1
	d'4. c8 bes a g4 
	g8 bes a g f g d  c
	d1
	c'4 c8 bes ees,4 ees8 g
	d'4 c8 bes ees,4 g8 bes
	a4 g8 f f f g f 
	g1
	c4 c8 bes ees,4 ees8 g
	d'4 c8 bes ees,4 g8 bes
	a4 g8 f f f g f 
	bes16 a  g8 ~ g2 r4 }
	


	
	  
	
	
    }
  
     \score {
        \new StaffGroup <<
           \new Staff << \global \trombone >>
     >>
        \layout { }
        \midi { \tempo 4=120
     }}
 
