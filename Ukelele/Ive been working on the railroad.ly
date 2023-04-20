\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "I've Been Working on the Railroad"
       composer = "Traditional"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""}


     global = {
        \time 4/4
	\tempo 4=130
	
}
     

	
    myChords = \chordmode { \set Staff.midiInstrument = "banjo"
        c1
        c1
        f1
        c1
        c1
        c1
        d1:7
        g1:7
        g1:7
        c1
        f1
        e1:7
        f1
        c1
        g1:7
        c1
 
    }
    
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' { \set Staff.midiInstrument = "banjo"
        \key c\major 
        c'4. g8 c8 g8 c8 d8
        e2 c2 
        f4. f8 c4 d4
        e1
        \break
        
        c4. g8 c8 g8 c8 d8
        e2 c4 e8 e8
        e4 d4 d4 e4
        d1
        \break
        
        d4. d8 cis8 d8 e8 d8
        c2 g2 
        f'4 f8 f8 c8 c8 d8 d8
        e1
        \break 
        
        a,4. b8 c8 b8 c8 a8
        g2 c2
        e4 f4 d4 d4 
        c1
        
        
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics {I've been work -- in on the rail -- road all the live -- long day. I've been work -- in on the rail -- road just to pass the time a -- way.  Can't you hear the whis -- tle blow -- in'?  Rise up so ear -- ly in the morn. Can't you hear the capt -- ain shout -- ing, Di -- nah, blow your horn!}



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
