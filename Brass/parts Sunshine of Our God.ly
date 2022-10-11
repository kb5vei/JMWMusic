\version "2.7.39"

\header {
       title = "Sunshine of the Invisible God"
       subtitle  = "For SPS Pep Band"	
	instrument = "Basses"
       copyright = "Inspired by music by Eric Clapton, Jack Bruce, Pete Brown, and Robert LeBlanc"
       composer = "Williamson and Incorvia"
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
	\set Staff.instrument = "Bb TC " \set Staff.midiInstrument = "trumpet" \transposition c
       \clef treble \key bes \major 
	
\repeat volta 2 {
	f8 f ees f r c' r b
	r bes! r f aes4 f
	f8 f ees f r c' r b
	r bes! r f aes2
	f8 f ees f r c' r b
	r bes! r f aes4 f
	f8 f ees f g g aes g
	f4. ees8 c4 c 

	
	
	\mark \default
	r2 bes'8 c r ees 
	r8 c r bes r c ~ c4
	r2 e,8  g r bes
	r g r f r g ~ g4
	r2 r8 c8 bes aes8 
	}
	\alternative { { r2. g4 } {g2 f4 ees8 f } }
	aes4 f8 ees f4-^
	\bar "|."
	
	
	
     }
     
     alto = \relative c''{
        \set Staff.instrument = "Eb TC " \set Staff.midiInstrument = "alto sax" \transposition c
        \clef treble \key bes \major 

	\repeat volta 2 {
	f8 f ees f r c' r b
	r bes! r f aes4 f
	f8 f ees f r c' r b
	r bes! r f aes2 
	f8 f ees f r c' r b
	r bes! r f aes4 f
	f8 f ees f g g aes g
	f4. ees8 c4 c 
	\mark \default

	r2 bes8 c r ees 
	r8 c r8 bes8 r8 c8 ~ c4
	r2 c8  e r g
	r ees r d r ees ~ ees4
	r2 r8 c8 bes aes8 
	
	}
	\alternative { { r2 d2  } {g2 f4 ees8 f } }
	aes4 f8 ees f4-^
	\bar "|."
}
     
     trombone =  \relative c {
        \set Staff.instrument = "C BC " \set Staff.midiInstrument = "trombone"
        \clef bass \key bes \major 
	
	\repeat volta 2 {
	f8 f ees f r c r b
	r bes! r f' aes4 f
	f8 f ees f r c r b
	r bes! r f' aes2
	f8 f ees f r c r b
	r bes! r f' aes4 f
	f8 f ees f g g aes g
	f4. ees8 c4 c 

	\mark \default
	c'8. c16 c4 r2
	ees2 bes2 	
	g8. g16 g4 r2
	ees'2 f2 	
	c8. c16 c4  r8 c8 bes aes8
	
	 }
	\alternative { { r4 b2. } {g2 f4 ees8 f } }
	aes4 f8 ees f4-^


 
	\bar "|."
     }
     

basses =  \relative c, {
        \set Staff.instrument = "Bass " \set Staff.midiInstrument = "trombone"
	\clef bass \key bes \major 
	\repeat volta 2 {	

	f8 f ees f r c r b
	r bes! r f' aes4 f
	f8 f ees f r c r b
	r bes! r f' aes2
	f8 f ees f r c r b
	r bes! r f aes4 f
	f'8 f ees f g g aes g
	f4. ees8 c4 c 
	
	\mark \default
	c8. c16 c4 r2
	ees2 bes2 	
	c8. c16 c4 r2
	ees2 bes2 	
	c8. c16 c4  r8 c'8 bes aes8
	
	}
	\alternative { { g8 g g g g g g g } {g2 f4 ees8 f } }
	aes4 f8 ees f4-^


	\bar "|."
		
	


     }
     
     
     \score {
        \new StaffGroup <<
%           \new Staff << \global \transpose bes c \trumpetone >>
%          \new Staff << \global \transpose ees c \alto >>
%          \new Staff << \global \trombone >>
	   \new Staff << \global \basses >>
     >>
        \layout { }
        \midi { \tempo 4=160}
     }

    