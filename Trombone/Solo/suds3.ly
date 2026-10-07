\version "2.7.39"

\header {
       title = "Suds in the Bucket"
       instrument = "Trombone"
       copyright = "2003 by GIA(?)"
       Composer = "Sara Evans"
       arranger = "Jonas Williamson"
}


     global = {
        \time 4/4
	\tempo 4=162
	
}
   
\layout{
  \context { \Score
    \override MetronomeMark #'extra-offset = #'(-9 . 0)
    \override MetronomeMark #'padding = #'3
  }}
  
\paper {
  between-system-padding = #1
  ragged-bottom=##f
  ragged-last-bottom=##f
 #(set-paper-size "letter")
}
     
   trombone = \relative c {
        \set Staff.instrument = "C BC " \set Staff.midiInstrument = "trombone" \transposition c'
        \clef bass \key f \major 
	%\override TextScript #'padding = #3				%Raises Text to keep from running into bar numbers.
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1) %tunes staff spacing

	
	r1
	r1
	r1
	r1
	\mark \default
	f8 f f f f4 d
	ees8 [ ees]  ees [  ees]  g f ees4
	f2 r2
	r4 bes,8 bes des4 des
	bes2 r2
	r8 g8 bes4 des8 g, r8 bes8 ~
	bes4 r2.
	r2 r8 f'8 f4
	f8 [ f ]  f [ d ] f [ f ] c [ d ]
	ees ees ees4 g8 [ f ] ees f ~
	f4 r2.
	r8  bes,8 bes bes des4 g,8 bes ~
	bes4 r2.
	r4 g8 bes des4 des
	bes2 r2
	r2 r8 f'8 f f 
	f4 f8 f f4 d
	d8 ees ees ees g4 ees8 f ~
	f4 r2.
	r8 bes,8 bes bes des4 g,8 bes ~
	bes4 r2. 
	r8 bes bes bes des4 des8 bes8 ~
	bes4 r2.
	r4 bes8 bes des4 g,8 bes ~
	bes4 r2.
	r8 g8 bes bes des4 des
	bes1  \mark \default

	r4 r8 bes'8 ~ bes 4. g8
	bes8 bes bes g bes bes ~ bes a ~
	a8 a a f a a r8 g8 ~
	g g g g g f f4 
	f2 r8 g8 ~ g8 a
	bes4 bes bes bes8 a ~
	a4 a4 a4 a8 bes ~ 
	bes1 ~
	bes4 r4 r8 bes8 bes bes 
	bes bes bes4 bes bes8 a ~
	a a a f a a g a 
	bes4 bes8 bes g f ees f ~
	f2 r8 bes,8 c bes 
	d4 f8 d f f f d
	f4 f8 f f g, a bes ~
	bes4 r2. \mark \default
	
	
	
	
	
	\bar "|."


}
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \trombone >>
  
     >>
        \layout { }
        \midi { \tempo 4=120}
     }