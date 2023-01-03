\version "2.7.39"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Waltzing Matilda"
       composer = "Christina Macpherson"
       arranger = "arr. Jonas Williamson"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""
}


     global = {
        \time 4/4
	\tempo 4=100
	
}
     

	
    myChords = \chordmode { \set chordChanges = ##t
    c1
    g1
    a1:min
    f1
    c1
    c1
    g1
    g1
    c1
    g1
    a1:min
    f1
    c1
    c1
    g1
    c1
    
    c1
    c1
    f1
    f1
    c1
    f1
    c1
    g1
    c1
    g1
    c1
    f1
    c1
    c1
    g:7
    c1

    
      
    }
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' {
        \key c\major 
    e4 e4 e4 e4 
    d2 d4 d4
    c4 d4 e4 c4
    a4 b4 c2
    g2 c4 e4
    g2 g4 g4 
    g2 f4 e4
    d2 c4 d4
    e2 e4 e4 
    d2 d4 d4
    c4 d4 e4 c4 
    a4 b4 c2
    g2 c4 e4
    a2 f4 e4
    d2 d4 d4 
    c1 \bar "||" \break

    g'2 g4 g4
    g2 e2
    c'2 c4 c4 
    b2 a2
    g2 g4 g4 
    a2 g4 g4 
    g2 f4 e4
    d2 c4 d4
    e2 e4 e4 
    d2 d4 d4
    c4 d4 e4 c4 
    a4 b4 c2
    g2 c4 e4
    a2 f4 e4
    d2 d4 d4 
    c1 



      
       

        \bar "|."
     }
  
	\addlyrics { "1. Once"  a jol -- ly swag -- ma -- n  camped be -- side  a bill -- a -- bong un -- der the shade of a cool -- a -- bah tree, and he sang, and he watched, and he wait -- ed till his bil -- ly boiled, you'll come a waltz -- ing ma -- til -- da with me!  Waltz -- ing ma -- til -- da! Waltz -- ing ma -- til -- da! You'll come a waltz -- ing ma -- til -- da with me!  And he sang, and he watched, and he wait -- ed till his bil -- ly boiled, you'll come a waltz -- ing ma -- til -- da with me!  }
    \addlyrics { "2. A" -- long came a jum -- buck to dri -- nk at the bill-- a -- bong, Up jumped the swag -- man and seized him with glee, And he sang as he shoved th -- at jum -- buck in his tuck -- er bag, You'll come a Waltz -- ing Ma -- til -- da, with me!}
 

     \score {
         
        \new StaffGroup <<
           \new ChordNames \myChords
           \new FretBoards \fretBoards
           \new Staff << \global \vocals >>


     >>
     \layout {\context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      \override VerticalAxisGroup
              .default-staff-staff-spacing
              .basic-distance = #200
}
    \context {
    \Staff
    \override VerticalAxisGroup
              .default-staff-staff-spacing
              .basic-distance = 200
  }
  }


        \midi { \tempo 2=90}
     }  
