\version "2.7.39"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Silent Night"
       composer = "Franz Gruber"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""
}


     global = {
        \time 3/4
	\tempo 4=60
	
}
     

	
    myChords = \chordmode { \set chordChanges = ##t
    c2.
    c2.
    c2.
    c2.
    g2.:7
    g2.:7
    c2.
    c2.

    f2.
    f2.
    c2.
    c2.
    f2.
    f2.
    c2.
    c2.
    
    g2.:7
    g2.
    c2.
    c2.
    c2.
    g2.:7
    c2.
    c2.





    
      
    }
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c'' {
        \key c\major 
    g4. (a8 ) g4
    e2.
    g4. ( a8 ) g4
    e2.
    \break

    d'2 d4
    b2.
    c2 c4
    g2.
    \break

    a2 a4 
    c4. (b8) a4
    g4. a8 g4
    e2. 
    \break

    a2 a4
    c4. b8 a4 
    g4. a8 g4
    e2.
    \break

    d'2 d4
    f4. d8 b4
    c2. 
    e2.
    \break

    c4 g4 e4
    g4. f8 d4
    c2. ~
    c2.   
    



    


      
       

        \bar "|."
     }
  
	\addlyrics { "1. Si"  -- lent night! Ho -- ly night! All is calm!  All is bright!  Round yon vir -- gin, mo -- ther and child.  Ho -- ly in -- fant so ten -- der and mild.  Sleep in Hea -- ven -- ly pea -- ce!  Sle -- ep in hea -- ven -- ly peace!}


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


        \midi { \tempo 2=90}
     }  
