\version "2.7.39"

\header {
       title = "The Caissons"
       subtitle  = "For SPS Pep Band"
       copyright = "Public Domain"
       composer = "Edmund L. Gruber"
       arranger = "arr. Jonas Williamson"
}


     global = {
        \time 4/4
	\tempo 4=120
	
}
     
     trumpetone = \relative c''{
	\set Staff.instrument = "Bb TC " \set Staff.midiInstrument = "trumpet" \transposition bes
       \clef treble \key f\major 
	\partial 4 c8-. a-.

	c4 c8-. a-. c4 c8 a 
	c8. d16 c8 a c4 a8 bes 
	c8 bes8 ~ bes g c bes ~ bes g
	f2. c'8 a

	c4 c8 a c4 c8 a 
	c8. d16 c8 a c4 a8 bes 
	c8 bes8 ~ bes g c bes ~ bes g
	f2. c'8 c
	f4-> f-> c2
	d8. e16 f8 d c2
	f8 f ~ f e8 d8. e16 f8 d
	g2.  c,8 c 
	f4 f c2 
	d8. e16 f8 d c4 a8 bes
	c8 bes8 ~ bes g c bes ~ bes g
	f1 ~
	f4 r2.
	
	
     }
     
     trumpettwo = \relative c''{
        \set Staff.instrument = "Eb TC " \set Staff.midiInstrument = "alto sax" \transposition bes
	\key c\major
        \clef treble \key d\major 
	\partial 4  r4
	 f4 e d c 
	f c f8 a, bes b
	c4 bes a g 
	f8 a bes b c4 g
	f'4 e d c
	f c f8 a bes b
	c,4 bes a g 
	f8 a bes b c d ees e
	f4 c a c
	bes f f' e
	d4 d g, d'8 cis 
	c!4 d ees e 
	f c f8 f8 g a
	bes4 f f d 
	c bes a g
	f'8. d16 c8 a f4 f4 ~
	f4 r2.
}
     
     trombone =  \relative c' {
        \set Staff.instrument = "C BC " \set Staff.midiInstrument = "trombone"
        \clef bass \key f \major 
	\partial 4 c8-. a-.

	c4 c8-. a-. c4 c8 a 
	c8. d16 c8 a c4 a8 bes 
	c8 bes8 ~ bes g c bes ~ bes g
	f2. c'8 a

	c4 c8 a c4 c8 a 
	c8. d16 c8 a c4 a8 bes 
	c8 bes8 ~ bes g c bes ~ bes g
	f2. c'8 c
	f4-> f-> c2
	d8. e16 f8 d c2
	f8 f ~ f e8 d8. e16 f8 d
	g2 c,4 c8 c 
	f4 f c2 
	d8. e16 f8 d c4 a8 bes
	c8 bes8 ~ bes g c bes ~ bes g
	f1 ~
	f4 r2.
	
	
	
	 

	
	
	 \bar "|."

     }
     

basses =  \relative c, {
        \set Staff.instrument = "Basses " \set Staff.midiInstrument = "tuba"
        \clef bass \key f \major 
	\partial 4  r4
	 f4 e d c 
	f c f8 a, bes b
	c4 bes a g 
	f8 a bes b c4 g
	f'4 e d c
	f c f8 a bes b
	c4 bes a g 
	f8 a bes b c d ees e
	f4 c a c
	bes f f' e
	d4 d g, d'8 cis 
	c!4 d ees e 
	f c f8 f,8 g a
	bes4 f f d 
	c bes a g
	f'8. d16 c8 a f4 f4 ~
	f4 r2.

	 

	
	
	 \bar "|."

     }
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \trumpetone >>
           \new Staff << \global \transpose f c \trumpettwo >>
           \new Staff << \global \transpose c bes, \trombone >>
	   \new Staff << \global \transpose c bes, \basses >>
     >>
        \layout { }
        \midi { \tempo 4=120}
     }