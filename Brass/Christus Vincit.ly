\version "2.7.39"

\header {
       title = "Rouser"
       subtitle  = "For SPS Pep Band"
       copyright = "Public Domain"
       composer = "Based on Christus Vincit"
       arranger = "arr. Jonas Williamson"
}


     global = {
        \time 2/2
	
	\tempo 2=120
	
}

\layout{
  \context { \Score
    \override MetronomeMark #'extra-offset = #'(-9 . 0)
    \override MetronomeMark #'padding = #'3
  }
}
     flute = \relative c''' {
	\set Staff.instrument = "C TC " \set Staff.midiInstrument = "flute" 
       \clef treble \key f \major 
	a2 a 
	c c
	f, f
	a a
	d g,
	c f,4 bes
	a2 g4. f8 
	f1
	\bar ":|"
	}
	
     trumpetone = \relative c''{
	\set Staff.instrument = "Bb TC " \set Staff.midiInstrument = "trumpet" \transposition bes
       \clef treble \key g\major 
	
	b2 b 
	d d
	g, g
	b b
	e a,
	d g,4 c
	b2 a4. g8 
	g1
	\bar ":|"
     }
     
     trumpettwo = \relative c''{
        \set Staff.instrument = "Eb TC " \set Staff.midiInstrument = "alto sax" \transposition ees
	\key c\major
        \clef treble \key d\major 
	a2 a
	a a 
	fis fis
	fis fis
	g e
	fis b4 g
	fis2 a4 ~ a8 d8
	d1 
	
	
	
}
     
     trombone =  \relative c {
        \set Staff.instrument = "C BC " \set Staff.midiInstrument = "trombone"
        \clef bass \key f \major 
	
	f2 f 
	g g
	d d
	a a 
	f' e
	d d4 bes'
	a4 r4 e r8 f8
	f1
 	
	\bar ":|"
	
	 

	
	
	 

     }
     

basses =  \relative c, {
        \set Staff.instrument = "Bass " \set Staff.midiInstrument = "tuba"
	\clef bass \key f \major 
	f2 f 
	e e
	d d
	c c
	bes c4 bes
	a2 bes4 g
	c2. ~ c8 c
	f,1
	
	
	
	\bar ":|"

     }
     
     
     \score {
	
        \new StaffGroup <<
	   \new Staff << \global \flute >>
           \new Staff << \global \trumpetone >>
           \new Staff << \global \trumpettwo >>
           \new Staff << \global \trombone >>
	   \new Staff << \global \basses >>
     >>
        \layout { }
        \midi { \tempo 4=120}
     }