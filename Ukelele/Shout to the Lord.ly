\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Shout to the Lord"
       composer = "Hillsong / Darlene Zschech"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics by Darlene Zschech.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""}


     global = {
        \time 4/4
	\tempo 4=90
	
}
     

	
    myChords = \chordmode { \set Staff.midiInstrument = "banjo" \set chordChanges = ##t
        c1
        g1
        a1:min
        f1
        c1
        c1
        f1
        g1

        c1
        g1
        a1:min
        f1
        c1
        c1
        f1
        g1

        c2 f2
        c2 g2
        c2 f2
        c2 g2
        a1:min
        f1
        g1
        g1

        c2 f2
        c2 g2
        c2 f2
        c2 g2
        c2 f2
        c2 g2
        c1            
    
    


        
       
       
 
    }
    
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' { \set Staff.midiInstrument = "banjo"
        \key c\major 
     r4 e4 f4 g4
    r4 b,4 c4 d4
    
      
        
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics {My Je -- sus, my sav -- ior}



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
