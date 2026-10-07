\version "2.7.39"

\header {
       title = "Livin' on a Prayer"
       subtitle  = "For Trombone"
       copyright = "1984 The Island Def Jam Music Group"
       composer = "Bon Jovi"
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
	R1*16 \bar "|:"
	bes'8 bes a a g f g g ~
	g2. r4 
	bes8 bes  a4 g r8 a8 
	bes8 a4 g8 g4  d4 
	c8 bes4 ~ bes8 r2
	r2 r8 d8 ~ d8 c8
	d2. r4
	r1
	bes'8 bes a a g f g g ~
	g2. r4 
	bes8 bes  a4 g r8 a8 
	bes8 a4 g8 g4  d4 
	c8 bes4 ~ bes8 r2
	r2 r8 d8 ~ d8 c8
	d2. r4
	r4 r8 r8 r f f f 
	g4 f8 f4 r8 r8 d8  
	f4 g4 g4 r8 g8
	g g g g f d f d 
	f8 g g4 g4 r8 g8
	g8 g4 f4 f8  r8 d8
	f4 g4 g4 d
	c2. r8 g'8
	\times 2/3 {g4 fis e} e4 r \bar "||"
	\key g \major
	g2. ~ g8 g8 
	g4 fis? e? d
	b'?4. c4 r8 r8 c8 ~
	c8 c8 b8 g8 g4 a4
	g8 a4 g4 ~ g4 g8
	g8 g fis4 e d
	b'4. c4 r8 r8 c8 ~
  	c8 c8 b8 g8 g4 a4 \key bes \major \bar "||"
	r1
	r1 

	
	  
	
	
     \bar ":|"  }
  
     \score {
        \new StaffGroup <<
           \new Staff << \global \trombone >>
     >>
        \layout { }
        \midi { \tempo 2=90}
     }
 
