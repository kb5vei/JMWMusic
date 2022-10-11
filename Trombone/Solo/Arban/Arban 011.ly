\version "2.8.8"

\header {
       title = "First Studies"
       instrument = "Trombone"
       copyright = "Copyright 1912 by Carl Fischer, Inc., New York"
       arranger = "J B Arban"
}


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
	 \override TextScript #'padding = #3				%Raises Text to keep from running into bar numbers.
	\set Score.markFormatter = #format-mark-numbers		%Boxes around rehearsal Marks

%1
	 \mark #1 g1->  \breathe g1-> ^\markup {sim.} c c a a d d f, f a a g g b b g g c \bar "|." \break

%2
	\mark #2 g2-> g2-> \breathe  a a b b c1 a2 a b b c c d1 d2 d c c b b a1 c c b b a a g1\bar "|." \break

%3
	\mark #3 e2-> f-> e1-> \breathe  f2 g f1 \breathe g2 a g1 \breathe a2 b a1 \breathe \bar "||" f2 g f1 \breathe g2 a g1 \breathe \break
	a2 b a1 \breathe b2 c b1 \breathe \bar "||"  g2 a g1 \breathe a2 b a1 \breathe b2 c b1  \breathe c2 d c1 \bar "|." \break


%4 
	\mark #4 e2-> f2-> e1-> \breathe d2 e d1 \breathe c2 d c1 \breathe b2 c b1 \breathe \bar "||" d2 e d1 \breathe c2 d c1 \breathe \break
	b2 c b1 \breathe a2 b a1 \breathe \bar "||" c2 d c1 \breathe b2 c b1 \breathe g2 a g1 \breathe c2 d c1 \bar "|." \break

%5 
	\mark #5 e,2-> g-> e1-> \breathe f2 a f1 \breathe g2 b g1 \breathe a2 c a1 \breathe b2 d2 b1 \breathe c2 e2 c1 \breathe \break
	c2 g c1 \breathe b2 d b1 \breathe a2 c a1 \breathe g2 b g1 \breathe f2 a f1\breathe e2 g e1 \bar "|." \break
%6
	\mark #6 c'2-> b2-> c2-> d-> \breathe c-> b-> a1-> \breathe d2 cis d e \breathe d c! b1 \breathe g2 fis g a \breathe b c d1 \breathe \break
	c2 e d c \breathe b a gis1 \breathe a2 gis a b \breathe c a b1 \breathe b2 a b c \breathe  d2 b c1 \bar "|."


	

}
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \transpose c bes \trombone >>
  
    	    	 >>


        \layout { }
        \midi { \tempo 4=120}
     }