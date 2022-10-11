\version "2.7.39"

\header {
       title = "How Can I Keep from Singing?"
       subtitle  = "For Trombone"
       copyright = "Public Domain"
       composer = "R. Lowry"
       arranger = "arr. Jonas Williamson"
}


     global = {
        \time 4/4
	\tempo 4=90
	
}
     

	

     
     trombone =  \relative c {
        \set Staff.instrument = "Trombone " \set Staff.midiInstrument = "trombone"
        \clef bass \key f\major 
	\partial 8 c8
	f4 g a f
	g8 f4 d8~ d4. f8 \break
	c4 f c'4. a8 
	a g2. c,8
	f4 g a f \break 
	g8 f4 d8 ~ d4. d8 
	c4 f a4. g8
	g f~ f2 \breathe a4 \break 

	c4 c c a 
	g8 a4 f8 ~ f4. g8
	a4 a a g \break
	a8 c4. ~ c4. a8
	c4 c c  a8 ( g ) 
	f8 f d4 c2 \break
	\time 2/4 c4 f8 g
	\time 4/4 a2. g4
	g8 f8 ~ f4~ f2 ~
	f2. \bar "|."
       }
  
	\addlyrics { "1. My"  life flows on in end- less song a- bove earth's la men ta tion.  I hear the real though far off hymn that hails a new cre- a- tion. No storm can shake my in- most calm while
			to that rock I'm cling- ing.  Since love is Lord of heav- en and earth, how can I keep from sing- ing? }   
	\addlyrics { "2. Through"  all the tum- ult and the strife, I hear that mus- ic ring- ing; it sounds and ec- hoes in my soul, How can I keep from sing- ing?   }   
   	\addlyrics { "3. What" though the storm and tem- pest blow, I know my sav- ior liv- eth, What though the dark- ness round me close, songs in the night it giv- eth.   }  
   	\addlyrics { "4. When" ty- rants trem- ble sick with fear, and hear their death knells ring- ing, when friends re- joice both far and near, How can I keep from sing- ing?   }     
       	\addlyrics { "5. The" peace of Christ makes fresh my heart, a foun- tain ev- er spring- ing.  All things are mine since I am His; How can I keep from sing- ing? }     

     \score {
        \new StaffGroup <<
           \new Staff << \global \trombone >>
     >>
        \layout { }
        \midi { \tempo 2=90}
     }
