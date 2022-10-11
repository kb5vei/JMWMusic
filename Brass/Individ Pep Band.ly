\version "2.7.39"

\header {
       title = "They'll Know We're a Pep Band 3.0"
       subtitle  = "For SPS Pep Band"
	subsubtitle = "Bb TC Instruments"
       copyright = "Public Domain"
       composer = ""
       arranger = "Reranged by Jonas Williamson"
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

     trumpetone = \relative c'{
	\set Staff.instrument = "Bb TC " \set Staff.midiInstrument = "trumpet" \transposition bes
       \clef treble \key c\major 
	\partial 4 r4
	r2. r8 e8 
	e e16 e e8 e16 e g8 e16 e e4
	e8 e16 e e8 e16 e ~ e e e8 e e
	e e16 e16 e8 e16 e e4 r4
	\mark \default
	r8 a16 a a8 a r c r g
	r8 a16 a a8 g a r8 r4
	r8 d16 d d8 d r c r g
	r8 a16 a a8 g a r r4
	r8 d16 d d8 d r c r g
	\times 2/3 {a4 a g } a4 e8 g
	a4 a8 g a c e, g
	a4 a8 c d4 c8 d
	e d c a d c a g
	r a16 a a8 a a r r4
	\bar "|."
	
	
	
     }
     
     trumpettwo = \relative c''{
        \set Staff.instrument = "Eb TC " \set Staff.midiInstrument = "alto sax" \transposition c
	\key bes  \major
        \clef treble \key bes \major 
	\partial 4 r4
	r1
	r1
	r1
	r2. 
	d8 f
	g4 g8 f g bes d, f
	g4 g8 f g4 g8 d'
	c4 c8 bes c bes g f
	g4 g8 f g4 g8 d'
	c4 c8 bes c bes g f
	\times 2/3 {g4 g f} g4 d8 f
	g4 g8 f g bes d, f
	g4 g8 bes c4 bes8 c 
	d8 c bes g c bes g f
	g2 ~ g8 r8 r4
	\bar "|."
	
}
     
     trombone =  \relative c' {
        \set Staff.instrument = "C BC " \set Staff.midiInstrument = "trombone"
        \clef bass \key bes \major 
	\partial 4 r8 bes8 
	bes bes16 bes bes8 bes16 bes d8 bes16 bes bes8 bes 
	bes bes16 bes bes8 bes16 bes d8 bes16 bes bes4
	a8 a16 a a8 a16 a ~ a a16 a8 a a
	a a16 a a a8 a16 a4 d,8 f
	g4 g8 f g bes d, f
	g4 g8 f g4 g8 d'
	c4 c8 bes c bes g f
	g4 g8 f g4 g8 d'
	c4 c8 bes c bes g f
	\times 2/3 {g4 g f} g4 d8 f
	g4 g8 f g bes d, f
	g4 g8 bes c4 bes8 c 
	d8 c bes g c bes g f
	g2 ~ g8 r8 r4
 	\bar "|."

     }
     

basses =  \relative c, {
        \set Staff.instrument = "Bass " \set Staff.midiInstrument = "trombone"
	\clef bass \key bes \major 
	\partial 4 r4
	r1
	r1
	r2. bes4 
	a1 
	g'8 r d r g r d r 
	g r d r g r g r
	c, r g r c r g r
	g8 g d' f g r8 r4
	c,8 r g r c  r g r
	\times 2/3 {g4 d' f} g,4 r4
	g'8 r d r g r d r 
	g r d r g r g r
	g r d r g r g r
	g r d r g r r4
	\bar "|."
	


     }
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \trumpetone >>
          % \new Staff << \global \transpose ees c \trumpettwo >>
          % \new Staff << \global \trombone >>
	  % \new Staff << \global \basses >>
     >>
        \layout { }
        \midi { \tempo 4=160}
     }