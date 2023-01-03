\version "2.7.39"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Oh Holy Night"
       composer = "Traditional"
       arranger = "arr. Jonas Williamson"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""
}


     global = {
        \time 6/8
	\tempo 4.=50
	
}
     

	
    myChords = \chordmode { \set chordChanges = ##t
    g2. ~
    g2.
    c2.
    g2.
    g2.
    g2.
    d2.
    g2.

    g2.
    g2.      
    c2.
    g2.
    g4.
    b2.:min
    fis2.
    b2.:min
    b4.:min

    d2.
    d2.
    g2.
    g2.
    d2.
    d2.
    g2.
    g2.

    e2.:min
    e2.:min
    b2.:min
    b2.:min
    a2.:min
    a2.:min

    e2.:min
    e2.:min

    g2. 
    d2.
    g2.
    g4.
    c4.

    g2.
    g4.    
    d2.
    g2.
    g4.

    d2.
    d2.
    g2.
    g4.
    c4.

    g2.
    d2.
    g2. 



      
    }
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' { 
        \key g \major 
    b4. b4  b8
    d4. r4 d8
    e4 e8 c4 e8
    g4. d4. \break 

    r4 d8 b4 a8
    g4. b4 c8
    d4. c4 a8 
    g2. \break

    b4. b4 b8 
    d4. ~ d4 d8
    e4 e8 c4 e8
    g4. d4. \break
    d8 c4 b8 fis'4
    d4 e8 fis4.
    g4 e8 b4. ~
    b4. r4 d8 \break

    d4. e4. 
    a,4. r4 d8
    e4 d8 g4 b,8
    e4. d4 d8 \break
    d4. e4. 
    a,4. d4. 
    e4 d8 g4 b,8
    d2.  \break
      
    g2. ~
    g4.  fis4 e8
    fis2. ~
    fis4. r4 fis8 \break 
    a2. ~
    a4 e8 e4 e8 
    g2.
    g4. r4 g8 \break
    b2. ( 
    a2)  ~ a8 d,8
    g2. ~
    g4. fis4 (e8) \break
    d2. ~ 
    d4 d8 e4 d8
    d2. ~
    d4. g4. \break
    a2. ~
    a4. d,4.
    b'2. ~
    b4. a4. \break
    g2.
    fis 4. g4 a8
    g2. ~
    g2. ~
    g2. 


    
    
      

        \bar "|."
     }
  
	\addlyrics { "1. Oh" ho -- ly night, the stars are bright -- ly shin -- ing; it is the night of our dear sav -- ior's birth. Long lay the world in sin and er -- ror pine -- ing  'till he ap -- peared and the soul felt its worth.  A thrill of hope, the wear -- y world re -- joi -- ces for yon -- der breaks a new and glo- rious morn.  Fall on your knees! Oh hear the an -- gel's voi -- ces!  Oh Night di -- vine! Oh night, when Christ was born.  Oh night di -- vine! Oh night! Oh night di- vine! }





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


        \midi { \tempo 4.=50}
     }  
