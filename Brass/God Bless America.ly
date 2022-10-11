\version "2.7.39"

\header {
       title = "God Bless America"
       subtitle  = "For Faculty Band, BHS"
       copyright = "1938 by Irving Berlin"
       arranger = "Williamson"
       composer = "Irving Berlin"
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
	\set Staff.instrumentName = "Bb TC " \set Staff.midiInstrument = "trumpet" \transposition c
       \clef treble \key aes \major 
	aes2 g4 f
	g8-> r16 f ees2.
	bes'2 aes4 bes
	c2 ~ c8 r8 bes c
	des4 f,2 des'4
	c4 ees,2 aes8 bes
	c4 bes8 aes bes4 aes8 g
	aes2 ~ aes8 r8 g8. aes16
	\mark \default

	bes4 ees,2 aes8. bes16
	c4 ees,2 bes'8. c16
	des4 g,2 c8. des16
	ees1
	\mark \default
	f2 ees4 des
	c8 bes aes4 ~ aes8 r8 des4 
	c2 bes 

	ees1
	f2 ees4 des
	c8 bes aes4 ~ aes8 r8 des4 
	c2 bes 
	aes2 ~ aes8 r8 r4
	
	\bar "|."
	
	
	
     }
     
     alto = \relative c'''{
        \set Staff.instrumentName = "Eb TC " \set Staff.midiInstrument = "alto sax" \transposition c
        \clef treble \key aes \major 
	aes2 g4 f
	g8-> r16 f ees2.
	bes'2 aes4 bes
	c2 ~ c8 r8 bes c
	des4 f,2 des'4
	c4 ees,2 aes8 bes
	c4 bes8 aes bes4 aes8 g
	aes2 ~ aes8 r8 g8. aes16
	\mark \default 
	bes4 ees,2 aes8. bes16
	c4 ees,2 bes'8. c16
	des4 g,2 c8. des16
	ees1	
	\mark \default
	
	f2 ees4 des
	c8 bes aes4 ~ aes8 r8 des4 
	c2 bes 

	ees1
	f2 ees4 des
	c8 bes aes4 ~ aes8 r8 des4 
	c2 bes 
	aes2 ~ aes8 r8 r4

	
	\bar "|."
}
     
     trombone =  \relative c' {
        \set Staff.instrumentName = "C BC " \set Staff.midiInstrument = "trombone"
        \clef bass \key aes \major 
	aes2 g4 f
	g8-> r16 f ees2.
	bes'2 aes4 bes
	c2 ~ c8 r8 bes c
	des4 f,2 des'4
	c4 ees,2 aes8 bes
	c4 bes8 aes bes4 aes8 g
	aes2 ~ aes8 r8 g8. aes16
	\mark \default

	bes4 ees,2 aes8. bes16
	c4 ees,2 bes'8. c16
	des4 g,2 c8. des16
	ees1
	\mark \default
	f2 ees4 des
	c8 bes aes4 ~ aes8 r8 des4 
	c2 bes 

	ees1
	f2 ees4 des
	c8 bes aes4 ~ aes8 r8 des4 
	c2 bes 
	aes2 ~ aes8 r8 r4

 
	\bar "|."
     }
     

basses =  \relative c {
        \set Staff.instrumentName = "Bass " \set Staff.midiInstrument = "trombone"
	\clef bass \key aes \major 
	aes2 g4 f
	g8-> r16 f ees2.
	bes'2 aes4 bes
	c2 ~ c8 r8 bes c
	des4 f,2 des'4
	c4 ees,2 aes8 bes
	c4 bes8 aes bes4 aes8 g
	aes2 ~ aes8 r8 g8. aes16
	\mark \default

	bes4 ees,2 aes8. bes16
	c4 ees,2 bes'8. c16
	des4 g,2 c8. des16
	ees1
	\mark \default
	f2 ees4 des
	c8 bes aes4 ~ aes8 r8 des4 
	c2 bes 

	ees1
	f2 ees4 des
	c8 bes aes4 ~ aes8 r8 des4 
	c2 bes 
	aes2 ~ aes8 r8 r4
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