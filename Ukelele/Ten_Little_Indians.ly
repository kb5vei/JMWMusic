\version "2.7.39"
\include "predefined-ukulele-fretboards.ly"

\header {
       title = "Ten Little Indians"
       subtitle  = "For Ukelele"
       composer = "Folk Song"
       arranger = "arr. Jonas Williamson"
}


     global = {
        \time 4/4
	\tempo 4=60
	
}
     

	
    myChords = \chordmode {
      c1
      g1
      c1
      g2:7 c2
    }

     fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c'' {
        \key c\major 
        c8  c16 c16 c8 c16 c16 e8 g16 g16 e16 e16 c8 | 
        d8 d16 d16 d8 d16 d16 b8 d16 d16 b16 b16 g8 |
        c16 c 16 c16 c16 c8 c16 c16 e8 g16 g16 e16 e16 c8 |
    g'8  f16 f16 e16 e16 d8 c8 c8 c4 
       

        \bar "|."
     }
  
	\addlyrics { "1. One"  lit tle two lit tle three lit tle in di ans, Four lit tle five lit tle six lit tle in di ans, se ven lit tle eight li tle nine li tle in di ans, ten lit tle in di an boys and girls}


     \score {
         
        \new StaffGroup <<
           \new ChordNames \myChords
           \new FretBoards \fretBoards
           \new Staff << \global \vocals >>


     >>
        \layout { \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }
        \midi { \tempo 2=90}
     }  
