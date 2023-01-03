\version "2.7.39"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Down the River / Down the Ohio"
       composer = "American Folk Song"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
       copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
       tagline = ""
}


     global = {
        \time 6/8
	\tempo 4.=80
	
}
     

	
    myChords = \chordmode { \set chordChanges = ##t
    \partial 8 g8
    g2.
    c2.
    d2.
    g2.
    
    g2.
    c2.
    d2.
    g2.

    g2.
    c2.
    d2.
    g2.

    g2.
    c2.
    d2.
    g2.

    
    
    

    
    




    
      
    }
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c'' {
        \key g\major 
 
    \partial 8 g8
    b8 b8 b8 g8 g8 g8
    e8 e e d4 b8
    d4 d8 d8 d8 b8
    d4. ~ d4 g8
    b4 b8 g4 g8
    e8 e8 e8 d4 d8
    fis4 fis 8 fis8 e8 fis8 
    g2.

    \bar "||" \break

    d4 d8 d8 d8 d8
    e4 e8 e8 e8 e8 
    fis4 fis8 e8 e8 fis8
    g4 ( a8 b4.) 
    
     d,4 d8 d8 d8 d8
     e4 e8 e8 e8 e8
    fis4 fis8 b4 a8 
    g4. r4



    


      
       

        \bar "|."
     }
  
	\addlyrics { The ri -- ver is up and the chan -- nel is deep, the wind is stea -- dy and strong.  Oh, won't we have a jol -- ly good time as we go sail -- ing a -- long. Down the ri -- ver, oh, down the ri -- ver, oh, down the ri -- ver we go. --  Down the ri -- ver, oh, down the ri -- ver, oh down the O -- hi -- o!  }


     \score {
         
        \new StaffGroup <<
           \new ChordNames \myChords
           \new FretBoards \fretBoards
           \new Staff << \global \vocals >>


     >>
     \layout {\context {
      \Score
      barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    \override BarNumber.break-visibility = ##(#f #t #t)
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
