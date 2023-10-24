\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "London Bridge is Falling Down"
       composer = "Folk Song"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""}


     global = {
        \time 4/4
	\tempo 4=130
	
}
     

	
    myChords = \chordmode { \set Staff.midiInstrument = "banjo" \set chordChanges = ##t
      c1
      c1
      g1
      c1
      c1
      c1
      g1
      c1
        
       
       
 
    }
    
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c'' { \set Staff.midiInstrument = "banjo"
        \key c\major 
      g4. a8 g4 f4
      e4 f4 g2
      d4 e4 f2
      e4 f4 g2
      g4. a8 g4 f4
      e4 f4 g2
      d2 g2
      e4 c2.
      
        
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics {Lon -- don bridge is fall -- ing down fall -- ing down fall -- ing down.  Lon -- don bridge is fall -- ing down, my fair la -- dy!}



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


        \midi { \tempo 4=130}
     }  
