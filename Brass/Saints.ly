\version "2.7.39"

\header {
       title = "When The Saints Go Marching In"
       subtitle  = "For Faculty Band, BHS"
       copyright = "Public Domain"
       composer = ""
       arranger = "arr. Jonas Williamson"
}


     global = {
        \time 4/4
	\tempo 4=120
	
}
\layout{
  \context { \Score
    \override MetronomeMark #'extra-offset = #'(-9 . 0)
    \override MetronomeMark #'padding = #'3
  }
}
     
     trumpetone = \relative c''{
	\set Staff.instrumentName = "Bb TC " \set Staff.midiInstrument = "trumpet" \transposition c
       \clef treble \key f\major 
	
	\partial 4*2 \once \override TextScript #'padding = #3 r8 ^\markup { tutti sempre ad lib. } f8 a bes
	c2 r8 f,8 a bes
	c2 r8 f,8 a bes
	c4 a f a
	g2. a8 g \break 
	f4. f8 a4 c
	c8 bes2 r8 a8 bes
	c4 a f g
	f2

	\bar ":|"
	
	
	
     }
     
     trumpettwo = \relative c''{
        \set Staff.instrumentName = "Eb TC " \set Staff.midiInstrument = "alto sax" \transposition c
        \clef treble \key f \major 
	\partial 4*2 r8 f8 a bes
	c2 r8 f,8 a bes
	c2 r8 f,8 a bes
	c4 a f a
	g2. a8 g
	f4. f8 a4 c
	c8 bes2 r8 a8 bes
	c4 a f g
	f2
	

		\bar ":|"
}
     
     trombone =  \relative c {
        \set Staff.instrumentName = "C BC " \set Staff.midiInstrument = "trombone"
        \clef bass \key f \major 
	\partial 4*2 r8 f8 a bes
	c2 r8 f,8 a bes
	c2 r8 f,8 a bes
	c4 a f a
	g2. a8 g
	f4. f8 a4 c
	c8 bes2 r8 a8 bes
	c4 a f g
	f2



 
	\bar ":|"
     }
     

basses =  \relative c, {
        \set Staff.instrumentName = "Bass " \set Staff.midiInstrument = "trombone"
	\clef bass \key f \major 
	\partial 4*2 r8 f8 a bes
	c2 r8 f,8 a bes
	c2 r8 f,8 a bes
	c4 a f a
	g2. a8 g
	f4. f8 a4 c
	c8 bes2 r8 a8 bes
	c4 a f g
	f2


	\bar ":|"
		
	


     }
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \transpose bes c \trumpetone >>
           \new Staff << \global \transpose ees c \trumpettwo >>
           \new Staff << \global \trombone >>
	   \new Staff << \global \basses >>
     >>
        \layout { }
        \midi { \tempo 4=160}
     }