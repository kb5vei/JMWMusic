\version "2.7.39"

\header {
       title = "Seek Ye First"
       subtitle  = "For Ukelele"
       composer = "Karen Lafferty"
       arranger = "arr. Jonas Williamson"
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
     vocals =  \relative c' {
        \key c\major 
        e2 ^\markup {
      \fret-diagram-terse #"o;o;o;3;"
    } e4 ( f4 ) | 
        g2 ^\markup {
      \fret-diagram-terse #"o;2;3;2;"}
         e4 ( d4 ) 
        c4 ( ^\markup {
      \fret-diagram-terse #"o;o;o;3;"
     } a4 c4 ) d4|
    e2.  ^\markup {
      \fret-diagram-terse #"o;3;2;1;"
     } r4 | \break
    
    f2  ^\markup {\fret-diagram-terse #"2;o;1;o;"} g4 ( f4 ) 
    e2 ^\markup {\fret-diagram-terse #"o;o;o;3;"} f4 ( e4 ) 
    d1 ( ^\markup {\fret-diagram-terse #"2;2;1;3;"}
    g2. ) ^\markup {\fret-diagram-terse #"o;2;1;2;"} r4 | \break

    e2 ^\markup {\fret-diagram-terse #"o;o;o;3;"} e4  f4  | 
    g2 ^\markup {\fret-diagram-terse #"o;2;3;2;"} e4  d4 | 
    c4  ^\markup {\fret-diagram-terse #"o;o;o;3;"} a4 c4  d4|
    e2.  ^\markup {\fret-diagram-terse #"o;3;2;1;"} r4 | \break


    f2 ^\markup {\fret-diagram-terse #"2;o;1;o;"} g4 ( f4)
    e2 ^\markup {\fret-diagram-terse #"o;o;o;3;"} f4 e 4
    d1 ^\markup {\fret-diagram-terse #"o;2;1;2;"}
    c1 ^\markup {\fret-diagram-terse #"o;o;o;3;"}

      
       

        \bar "|."
     }
  
	\addlyrics { "1. Seek"  ye first the  kingdom of God and his  rit eous ness and all these things shall be add ed un to you Al le lu al le lu ia }


     \score {
         
        \new StaffGroup <<
           \new ChordNames \myChords
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
