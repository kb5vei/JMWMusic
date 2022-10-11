\version "2.7.39"

\header {
       title = "Warmups"
       instrument = "Trombone Warmups"
       copyright = "Creative Commons Non-commercial, Share-alike License"
       Composer = "Jonas Williamson"
}


     global = {
        \time 4/4
	\tempo 4=60
	
}
   
\layout{
  \context { \Score
    \override MetronomeMark #'extra-offset = #'(-9 . 0)
    \override MetronomeMark #'padding = #'3
  }}
  
     
   trombone = \relative c {
        \set Staff.instrument = "C BC " \set Staff.midiInstrument = "trombone" \transposition c'
        \clef bass \key c \major 
	\override Score.BarNumber #'break-visibility = #end-of-line-invisible    	%Prints Bar Numbers in all measures
	\override TextScript #'padding = #3				%Raises Text to keep from running into bar numbers.

	
%Long Tones Exercize

	f1 ^\markup {Long Tones}
	e1
	f1
	ees1
	f1
	d
	f
	des \break

	f
	c
	f
	b,!
	f'
	bes,!
	r1 \break

	f'2
	fis
	f!
	g
	f
	aes
	f
	a!
	f
	bes
	r1 \break

	
% Lip Slurs 1
	bes4^\markup {Lip Slurs 1} ( f bes, f' 
	bes f bes, ) r4
	
	a' ( e a, e'
	a e a, ) r
	
	aes' ( ees aes, ees'
	aes ees aes, ) r
	
	
	g' ( d g, d' 
	g d g, ) r
	
	ges' ( des ges, des'
	ges des ges, ) r

	f'^"6" ( c f, c'
	f c f,) r

	e'!^"7" ( b! e, b'
	e b e, ) r \break


%Range
	bes''4 ^ \markup {Range Warmup } b bes c
	bes cis bes d
	bes ees bes e
	bes f' bes, e
	bes ees bes d
	bes ees bes e \break
	bes f'	bes, ges'
	bes, g'	bes, aes'
	bes, g' bes, ges'
	bes, g'	bes, ges' 
	bes, g' bes, aes'\break
	bes, a' bes, aes' 
	bes, a' bes, bes'
	bes, bes'2 r4

	bes,,4 a bes aes
	bes g bes ges
	bes f bes e,
	bes'2 r2 \break

% Pedal Tones
	bes,4 ^ \markup {Pedal Tones } a bes aes
	bes g bes ges
	bes f bes e,
	bes'2 r2 \break
	


%Pedal Tone Slurs 1

	bes'2 ^ \markup {Pedal Tones Lip Slurs 1}  ( bes,2 )
	a'2 ( a, )
	aes' ( aes, )
	g' ( g, )
	fis' ( fis, )
	f'! (f,! )
	e'! ( e,! ) \break

%Lip slurs 2

	bes'''4 ^ \markup {Lip Slurs 2}  ( f bes, f' 
	bes d f d 
	bes f bes d
	bes f bes ) r \break

	a4 ( e a, e' 
	a cis e cis 
	a e a cis
	a e a ) r \break


	aes4 ( ees aes, ees' 
	aes c ees c 
	aes ees aes c
	aes ees aes ) r \break


	g4 ( d g, d' 
	g b d b 
	g d g b
	g d g ) r \break
	
	ges4 ( des ges, des' 
	ges bes des bes 
	ges des ges bes
	ges des ges ) r \break


	f4 ( c f, c' 
	f a c a 
	f c f a
	f c f ) r \break


	e4 ( b e, b' 
	e aes b aes 
	e b e aes
	e b e ) r \break

% Tounging
	bes8 ^ \markup {Articulation}  bes bes bes bes bes bes bes
	c-. c-. c-. c-. c-. c-. c-. c-.
	d-- d-- d-- d-- d-- d-- d-- d-- 
	ees-> ees-> ees-> ees-> ees-> ees-> ees-> ees->
	f-^ f-^ f-^ f-^ f-^ f-^ f-^ f-^ 
	g-- g-. g-- g-. g-- g-. g-- g-. 
	a-. a-- a-. a-- a-. a-- a-. a-- 
	bes-. bes-. bes-- bes-- bes-^ bes-^ bes4-^ \break





}
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \trombone >>
  
     >>
        \layout { }
        \midi { \tempo 4=120}
     }