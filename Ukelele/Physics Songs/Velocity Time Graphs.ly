\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Velocity-Time Graphs"
       composer = "Irish Traditional"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Melody: Be thou my Vision; Lyrics " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""}


     global = {
        \time 3/4
	\tempo 4=90
	
}
     

	
    myChords = \chordmode {
        c2.
        a2.:m 
        f2.
        c2.
        g2.
        g2.
        f2.
        g2.
        f2.
        f2.
        c2.
        f2.
        c2.
        a2.:m
        f2.
        c2.
 
    }
    
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' {
        \key c\major 
        c4 c4 d8 (c8)
        a4 g4 a4
        c2 d4 
        e2. 
        \break
        
        d4 d4 d4
        d4 e4 g4 
        a4 ( g4 ) e4 
        g2.
        
        \break
        
        a4 a8 b8 c8 (b8) 
        a4 ( g4 e4 )
        g4 c,4 b4 
        a2 (g4) 
        \break
        
      
        c4 e4 g4
        b8 (g8) e4 c8 e8
        d4 c4 c8 c8 
        c2.    
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics { Ac -- ce -- ler --  a -- tion, it is the key
	it's slope on graphs of ve -- lo -- ci -- ty.
	Dis -- place -- ment's the area we cal -- cu -- late 
	you need cal -- cu -- lus if the graph's lines are not straight. }
  



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


        \midi { \tempo 4=90}
     }  
