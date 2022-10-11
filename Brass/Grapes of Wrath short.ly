\version "2.7.39"

\header {
       title = "Grapes of Wrath"
       subtitle  = "For Faculty Band, BHS"
       copyright = "From Veggie Tales, 1994 Bob and Larry Publishing (ASCAP)"
       arranger = "Williamson"
       composer = "Phil Vischer"
}


     global = {
        \time 4/4
	\set Score.markFormatter = #format-mark-box-barnumbers
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
       \clef treble \key ees \major 
	\partial 8*3 bes8 c d
	ees4 r8 g bes,4 r8 bes8
	ees d ees g bes4 r8 bes8
	c8 bes aes g  aes g f ees
	d4 f4 bes,8 bes c d
	ees4 r8 g8 bes,4 r8 bes
	ees d ees g bes4 r8 bes8
	c d ees aes, g aes bes ees,
	f f ees d ees4 r8 bes'8
	c d ees aes, g aes bes ees,
	f f ees d ees4-^ r4
	
	
	\bar "|."
	
	
	
     }
     
     alto = \relative c''{
        \set Staff.instrument = "Eb TC " \set Staff.midiInstrument = "alto sax" \transposition c
        \clef treble \key ees \major 
	\partial 8*3 bes8 c d
	bes4 r8 g' bes,4 r8 bes8
	bes d bes' g g4 r8 bes8
	aes8 bes aes g  ees g f ees
	bes4 f'4 bes,8 bes c d
	bes4 r8 g8 bes4 r8 bes
	bes d bes' g g4 r8 bes8
	aes d c aes ees aes g ees
	d f ees d bes4 r8 bes'8
	aes d c aes ees aes g ees
	d f ees d bes4-^ r4
	
	\bar "|."
}
     
     trombone =  \relative c {
        \set Staff.instrument = "C BC " \set Staff.midiInstrument = "trombone"
        \clef bass \key ees \major 
	\partial 8*3 bes8 c d
	g4 r8 g g,4 r8 bes8
	g' d g g ees4 r8 bes8
	ees8 bes' aes g  c g f ees
	g4 f4 bes,8 bes c d
	g4 r8 g8 g4 r8 bes
	g d g g ees4 r8 bes8
	ees d aes' aes g aes ees ees 
	bes8 r8 aes r8  g4 r8 bes8
	ees d aes' aes g aes ees ees 
	bes8 r8 aes r8  g4-^ r4
	

 
	\bar "|."
     }
     

basses =  \relative c, {
        \set Staff.instrument = "Bass " \set Staff.midiInstrument = "trombone"
	\clef bass \key ees \major 
	\partial 8*3 bes8 c d 
	ees4 bes ees bes
	ees4 bes ees bes
	aes ees' aes, ees'
	bes f bes8 bes c d
	ees4 bes ees bes
	ees4 bes ees bes
	aes aes ees' ees
	bes bes ees bes
	aes aes ees' ees
	bes bes ees-^ r4
	



	\bar "|."
		
	


     }
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \transpose bes c \trumpetone >>
           \new Staff << \global \transpose ees c \alto >>
           \new Staff << \global \trombone >>
	   \new Staff << \global \basses >>
     >>
        \layout { }
        \midi { \tempo 4=120}
     }