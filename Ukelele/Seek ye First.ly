\version "2.7.39"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Seek Ye First"
       composer = "Karen Lafferty"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""
}


     global = {
        \time 4/4
	\tempo 4=100
	
}
     

	
    myChords = \chordmode {
      c1
      g1
      a1:m
      e1:m
      f1
      c1
      d1:7
      g1:7
      c1
      g1
      a1:m
      e1:m 
      f1
      c1
      g1:7
      c1

      
    }
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' {
        \key c\major 
     e2 e4 ( f4 ) | 
        g2   e4 ( d4 ) 
        c4  ( a4 c4 ) d4|
    e2.  r4 | \break
    
    f2   g4 ( f4 ) 
    e2  f4 ( e4 ) 
    d1 ( 
    g2. )  r4 | \break

    e2  e4  f4  | 
    g2  e4  d4 | 
    c4  a4 c4  d4|
    e2.  r4 | \break


    f2  g4 ( f4)
    e2  f4 e 4
    d1 
    c1 

      
       

        \bar "|."
     }
  
	\addlyrics { "1. Seek"  ye first the  kingdom of God and his  rit eous ness and all these things shall be add ed un to you Al le lu al le lu ia }
    \addlyrics { "2. Ask"  "and it" shall be "given un" to you, seek and ye shall find. Knock and the door shall be ope ned un to you Al le lu al le lu ia }


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
