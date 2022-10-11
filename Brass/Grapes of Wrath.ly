\version "2.7.39"

\header {
       title = "Grapes of Wrath"
       subtitle  = "For SPS Pep Band"
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
     
     trumpetone = \relative c'''{
	\set Staff.instrument = "Bb TC " \set Staff.midiInstrument = "trumpet" \transposition c
       \clef treble \key ees \major 
	\partial 8*3 bes8 c d
	ees4 r8 g bes,4 r8 bes8
	ees d ees g bes4 r8 bes8
	c8 bes aes g  aes g f ees
	d4 f4 bes,8 bes c d
	ees4 r8 g8 bes,4 r8 bes
	ees d ees g bes4 r8 bes8
	c d ees aes,g aes bes ees,
	f f ees d ees4 r8 bes
	\mark \default

	c bes c aes bes [ bes16 g ] g8 g 
	f g aes f g bes ~ bes bes
	
	
	\bar "|."
	
	
	
     }
     
     alto = \relative c'''{
        \set Staff.instrument = "Eb TC " \set Staff.midiInstrument = "alto sax" \transposition c
        \clef treble \key ees \major 
	

	
	\bar "|."
}
     
     trombone =  \relative c' {
        \set Staff.instrument = "C BC " \set Staff.midiInstrument = "trombone"
        \clef bass \key ees \major 
	

 
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
	bes bes ees2
	\mark \default

	aes,4 aes ees' ees
	bes bes ees ees
	aes,4 aes ees' ees
	f, f  bes bes
	aes aes ees' ees
	bes bes ees ees
	aes,4 aes ees' ees
	f, f  bes2
	\mark \default

	r8 bes8 c d ees4 bes
	ees4 bes ees bes
	ees bes aes ees'
	aes, ees' bes f
	bes8 bes c d ees4 d
	ees4 bes ees bes
	ees4 bes aes aes 
	ees' ees bes bes
	ees ees aes, aes
	ees' ees bes bes 
	ees ees-> r2




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