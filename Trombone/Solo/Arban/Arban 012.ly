\version "2.8.8"

%\header {
%       %title = "First Studies"
%       instrument = "Trombone"
%       copyright = "Copyright 1912 by Carl Fischer, Inc., New York"
%       %arranger = "J B Arban"
%}


     global = {
        \time 4/4
	\tempo 4=60
	
}
   
\paper {
  between-system-padding = #1
  ragged-bottom=##f
  ragged-last-bottom=##f
 #(set-paper-size "letter")
}

\layout{
  \context { \Score
    \override MetronomeMark #'extra-offset = #'(-9 . 0)
    \override MetronomeMark #'padding = #'3
  }}
  
     
   trombone = \relative c {
        \set Staff.instrument = "C BC " \set Staff.midiInstrument = "trombone" \transposition c'
        \clef bass \key c \major 
	%\override Score.BarNumber #'break-visibility = #end-of-line-invisible    	%Prints Bar Numbers in all measures
	 \override TextScript #'padding = #2				%Raises Text to keep from running into bar numbers.
	\set Score.markFormatter = #format-mark-numbers		%Boxes around rehearsal Marks


%7
	\mark #7 
	g1-> ^tu \breathe
	c-> \breathe
	g \breathe 
	e' \breathe 
	c \breathe 
	g' \breathe 
	e \breathe 
	c \breathe \bar "|." 

	fis,1-> ^tu \breathe
	b-> \breathe
	fis \breathe 
	dis' \breathe 
	b \breathe 
	fis' \breathe 
	dis \breathe 
	b \breathe \bar "|."  \break
		

	f1-> ^tu \breathe
	bes-> \breathe
	f \breathe 
	d' \breathe 
	bes \breathe 
	f' \breathe 
	d \breathe 
	bes \breathe \bar "|." 


	e,1-> ^tu \breathe
	a-> \breathe
	e \breathe 
	cis' \breathe 
	a \breathe 
	e' \breathe 
	cis \breathe 
	a \breathe \bar "|." \break


	ees1-> ^tu \breathe
	aes-> \breathe
	ees \breathe 
	c' \breathe 
	aes \breathe 
	ees' \breathe 
	c \breathe 
	aes \breathe \bar "|." 


	d,1-> ^tu \breathe
	g-> \breathe
	d \breathe 
	b' \breathe 
	g \breathe 
	d' \breathe 
	b \breathe 
	g \breathe \bar "|." \break
	
	cis,1-> ^tu \breathe
	fis-> \breathe
	cis \breathe 
	ais' \breathe 
	fis \breathe 
	cis' \breathe 
	ais \breathe 
	fis \breathe \bar "|." 

	g1-> ^tu \breathe
	c-> \breathe
	g \breathe 
	e' \breathe 
	c \breathe 
	g' \breathe 
	e \breathe 
	c \breathe \bar "|." \break

	\mark #8 
	g2-> ^tu g-> ^tu 
	c c 
	g g
	e' e 
	g, g 	
	c1 \bar "|."

	
	fis,2-> ^tu fis-> ^tu 
	b b 
	fis fis
	dis' dis 
	fis, fis 	
	b1 \bar "|." \break

	f2-> ^tu f-> ^tu 
	bes bes 
	f f
	d' d 
	f, f 	
	bes1 \bar "|."

	e,2-> ^tu e-> ^tu 
	a a
	e e
	cis' cis 
	e, e 	
	a1 \bar "|." \break


	ees2-> ^tu ees-> ^tu 
	aes aes
	ees ees
	c' c 
	ees, ees 	
	aes1 \bar "|."

	d,2-> ^tu d-> ^tu 
	g g
	d d
	b' b 
	d, d 	
	g1 \bar "|." \break

	
	c,2-> c->
	f f
	c c
	a' a
	c, c
	f1 \bar "|."

	g2-> ^tu g-> ^tu 
	c c 
	g g
	e' e 
	g, g 	
	c1 \bar "|." \break



	 %Exercise 9

	\mark #9 \key f \major
	\partial 2 c,2	
	d c
	e c
	f c
	g' c,
	a' c,
	g' c,
	f1 ~  \noBreak
	\partial 2 f4 r4 \bar "|." \noBreak

	\key fis \major
	\partial 2 cis2 \noBreak
	dis2 cis \noBreak
	eis cis \noBreak
	fis cis \noBreak
	gis' cis, \noBreak
	ais' cis, \noBreak
	gis' cis, \noBreak
	fis1 ~
	\partial 2 fis4 r4 \bar "|." \break

	
	\key g \major
	\partial 2 d2
	e2 d 
	fis d
	g d
	a' d,
	b' d,
	a' d,
	g1 ~ \noBreak
	\partial 2 g4 r4 \bar "|." \noBreak


	\key aes \major
	\partial 2 ees2 \noBreak
	f2 ees \noBreak
	g ees \noBreak
	aes  ees \noBreak
	bes' ees, \noBreak
	c' ees, \noBreak
	bes' ees, \noBreak
	aes ~
	\partial 2 aes4 r4 \bar "|." \break	
	
	\key a \major
	\partial 2 e2
	fis e
	gis e
	a e
	b' e,	
	cis' e,
	b' e,
	a ~ \noBreak
	\partial 2 a4 r4 \bar "|." \noBreak

	
	\key bes \major
	\partial 2 f2 \noBreak
	g2 f \noBreak
	a f \noBreak
	bes  f \noBreak
	c' f, \noBreak
	d' f, \noBreak
	c' f, \noBreak
	bes ~
	\partial 2 bes4 r4 \bar "|." \break	

	
	
	\key b \major
	\partial 2 fis2 
	gis fis
	ais fis
	b fis
	cis' f,
	dis' f,
	cis' fis,
	b ~ \noBreak
	\partial 2 b4 r4 \bar "|." \noBreak

	\key c \major
	\partial 2 g2 \noBreak
	a g \noBreak
	b g \noBreak
	c g \noBreak 
	d' g, \noBreak
	e' g, \noBreak
	d' g, \noBreak
	c1 ~ \noBreak
	\partial 2 c4 r4 \bar "|."
	\key cis \major
	 

	

}
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \transpose c bes \trombone >>
  
    	    	 >>


        \layout { }
        \midi { \tempo 4=120}
     }