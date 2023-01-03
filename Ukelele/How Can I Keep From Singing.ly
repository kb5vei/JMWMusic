\version "2.7.39"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "How Can I Keep From Singing?"
       subtitle = "My Life Flows On in Endless Song"    
       composer = "Robert Lowry"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""
}


     global = {
        \time 4/4
	\tempo 4=90
	
}
     

	
    myChords = \chordmode { \set chordChanges = ##t
    \partial 8
    f8
    f1
    bes1
    f1
    c1
    f1
    bes1
    f2
    c2:7
    
    f1
    f1
    c2
    d2:min
    f1    
    c1
    
    f1
    bes2
    f2 
    f2 f2.
    c4:7 
    c8:7
    f2. 
    
    
      
    }
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' {
        \key f\major 
 
    \partial 8 c8
    f4 g4 a4 f4
    g8 f4 d8 ~ d4. f8
    c4 f4 c'4. a8
    a8 g2. c,8
    \break

    f4 g4 a4 f4
    g8 f4 d8 ~ d4. d8
    c4 f4 a4. g8 
    g8 f8 ~ f2 a4 \bar "||"
    \break

    c4 c4 c4 a4
    g8 a4 f8 ~ f4. g8
    a4 a4 a4 g4 
    a8 c2. a8
    \break 
    
    c4 c4 c4 a8 ( g8) 
    f8 f8 d4 c2
    \time 6/4 c4 f8 g8 a2. g4 
    \time 4/4 g8 f2. 
     
    

    
    
    
     

        \bar "|."
     }
  
	\addlyrics { "1. My" life flows on in end -- less song a -- bove earth's lam -- en -- ta -- tion, I catch the sweet, though far -- off hymn that hails a new cre -- a -- tion.  No storm can shake my in -- most calm while to that rock I'm cling -- ing. Since Christ is Lord of heav -- en and earth, how can I keep from sing -- ing?  }


     \score {
         
        \new StaffGroup <<
           \new ChordNames \myChords
           \new FretBoards \fretBoards
           \new Staff << \global \vocals >>


     >>
     \layout {\context {
      \Score
      barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    \override BarNumber.break-visibility = ##(#f #t #t)
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
