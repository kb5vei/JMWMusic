\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Camptown Races"
       composer = "Stephen Foster"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""}


     global = {
        \time 4/4
	\tempo 4=160
	
}
     

	
    myChords = \chordmode { \set Staff.midiInstrument = "banjo"
       c1
       c1
       g1
       g1
       c1
       c1
       g1
       c1
       c1
       c1:7
       f1
       c1
       c1
       c1
       g1
       c1
       
       
 
    }
    
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' { \set Staff.midiInstrument = "banjo"
        \key c\major 
        g'4 g4 e4 g4
        a4 g4 e2 
        e4 d2.
        e4 d2.  
        \break     
        
        g4 g4 e4 g4
        a4 g4 e2 
        d2 e4 d4
        c1
        \break
        
        c4. c8 e4 g4
        c1
        a4. a8 c4 a4 
        g2. r8 g8
        \break
        
         g4 g4 e8 e8 g8 g8
        a4 g4 e2 
        d4 d8 d8 e4 d8 d8
        c1
        
        
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics {Camp -- town la -- dies sing this song, Doo -- dah! doo -- dah!
Camp -- town race -- track five miles long, Oh, doo -- dah day!
Goin' to run all night,
Goin' to run all day!
I'll bet my mo -- ney on the bob -- tail nag,
Some -- bo -- dy bet on the bay.}



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
