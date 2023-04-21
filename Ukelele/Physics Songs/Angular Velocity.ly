\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Angular Velocity"
       subtitle= "To the tune of Camptown Races"
       composer = "Stephen Foster"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music Public Domain.  Lyrics and Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
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
        a4 g4 e4 e8 e8 
        e4 d2 e8 e8
        e4 d2.  
        \break     
        
        g4 g4 e4 g4
        a4 g4 e2 
        d2 e4 d4
        c1
        \break
        
        c2 e4 g4
        c1
        a4 a4 c4 a4 
        g1
        \break
        
         g4 g4 e4 g4
        a4 g4 e4. d8
        d8 d8 d4 e4  (d4
        c1)
        
        
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics {An -- gu -- lar ve -- lo -- ci -- ty is O -- me -- ga! is O -- me -- ga!
An -- gu -- lar ve -- lo -- ci -- ty, how fast it spins. 
v o -- ver r e -- quals o -- me -- ga 

ang -- gu -- lar ve -- lo -- ci -- ty o -- me -- ga's not w -- -- }



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
