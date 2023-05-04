\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Pop Goes the Weasel"
       composer = "Folk Song"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""}


     global = {
        \time 6/8
	\tempo 4.=60
	
}
     

	
    myChords = \chordmode { \set Staff.midiInstrument = "banjo" \set chordChanges = ##t
      \partial 8 c8
      c2 ~ c8 g8
      c2.
      c2.
      c2 ~ c8 g8
      c2. 
      c2.
      f4.
      g4.
      c2.
      
       
       
 
    }
    
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c'' { \set Staff.midiInstrument = "banjo"
        \key c\major 
      \partial 8 g8
      c4 c8 d4 d8
      e8 g8 e8 c4 g8
      c4 c8 d4 d8 
      e4. c4 g8 
      c4 c8 d8 d8 d8
      e8 g8 e8 c4.
      a'4.-> d,4 f8 
      e4. c4. 
      
        
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics {A -- round and round the mul -- ber -- ry bush the mon -- key chased the wea -- sel.  The mon -- key thought it was on -- ly a joke.  POP goes the wea -- sel.}



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
