\version "2.7.39"

\header {
       title = "Jericho"
       subtitle  = "For two Trumpets and a Trombone"
       copyright = "Public Domain"
       composer = "Southern Spiritual"
       arranger = "arr. Jonas Williamson"
}


     global = {
        \time 4/4
	\tempo 4=120
	
}
     
     trumpetone = \relative c'{
	\set Staff.instrument = "Trumpet 1 " \set Staff.midiInstrument = "trumpet" \transposition bes
       \clef treble \key c\major 
	
	
	
	
     }
     
     trumpettwo = \relative c''{
        \set Staff.instrument = "Trumpet 2 " \set Staff.midiInstrument = "trumpet" \transposition bes
	\key g\major
        \clef treble \key c\major 
	 
	
}
     
     trombone =  \relative c {
        \set Staff.instrument = "Trombone " \set Staff.midiInstrument = "trombone"
        \clef bass \key bes \major 
	bes8 a bes c des c des ees 
	f f r f8 ~ f4 r4
	ees8 ees r ees ~ ees4 r4
	f8 f r f8 ~ f4 r4

	bes,8 a bes c des c des ees 
	f8 f r f8 ~ f4 des8 ees
	f4-> ees-> des-> c->
	bes8 bes16 bes bes8 bes bes r8 r4
	 

	
	
	 \bar "|."

     }
     
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \trumpetone >>
           \new Staff << \global \trumpettwo >>
           \new Staff << \global \trombone >>
     >>
        \layout { }
        \midi { \tempo 4=120}
     }