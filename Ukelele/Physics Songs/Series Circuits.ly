\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Series Circuits"
       subtitle="To the tune of The Muffin Man"
       composer = "Folk Song"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music Public Domain.  Lyrics and Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""}


     global = {
        \time 4/4
	\tempo 4=130
	
}
     

	
    myChords = \chordmode { \set Staff.midiInstrument = "banjo" \set chordChanges = ##t
      c1
      c1
      f1
      g1
      c1
      c1
      f2
      g2
      c1
        
       
       
 
    }
    
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c'' { \set Staff.midiInstrument = "banjo"
        \key c\major 
     g4 c4 c4. d8
     e4 c4 c2
     a4 d4 d2
     b4 g4 g2 
     
          g4 c4 c4. d8
     e4 c4 c4. b8
     d2 g,4 g4 
     c1
      
        
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics {Ser -- ies circ -- uits have one path, have one path, have one path.  Ser -- ies cir -- cuits have one path for cur -- rent to flow.}
	\addlyrics {Ser -- ies cur -- rents are the same, are the same, are the same.  Ser -- ies cur -- rents are the same and vol -- ta -- ges add.}


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
