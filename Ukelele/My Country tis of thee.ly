\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "My Country 'tis of Thee"
       composer = "Folk Song"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""}


     global = {
        \time 3/4
	\tempo 4=120
	
}
     

	
    myChords = \chordmode { \set Staff.midiInstrument = "banjo" \set chordChanges = ##t
     f2.
     c2.
     f2.
     f2.
     g2.:min
     f2.
     f2.
     f2.
     c2.:7
     c2.:7
     f2.
     f2.
     bes2.
     f2.
     
     
     
        
       
       
 
    }
    
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' { \set Staff.midiInstrument = "banjo"
        \key f\major 
      
        f4 f4 g4 
        e4. f8 g4
        a4 a4 bes4
        a4. g8 f4
        \break
        
        g4 f4 e4 
        f2.
        c'4 c4 c4
        c4. bes8 a4
        \break
        
        bes4 bes bes 
        bes4. a8 g4
        a4 bes8 ( a ) g (f)
        a4. bes8 c4 
        \break
        
        d8 ( bes8 ) a4 g4
        f2.
         
        
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics {My coun -- try  'tis of thee, sweet land of lib -- er -- ty, of thee I sing; Land where my fa -- thers died, land of the pil -- grim's pride, from ev -- ery  moun -- tain -- side let free -- dom ring!}



     \score {
         
        \new StaffGroup <<
           \new ChordNames \transpose f g \myChords 
           \new FretBoards \transpose f g \fretBoards
           \new Staff << \global \transpose f g \vocals >>


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
