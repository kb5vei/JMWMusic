\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Be Thou My Vision"
       composer = "Irish Traditional"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""}


     global = {
        \time 3/4
	\tempo 4=90
	
}
     

	
    myChords = \chordmode {
        c2.
        a2.:m 
        f2.
        c2.
        g2.
        g2.
        f2.
        g2.
        f2.
        f2.
        c2.
        f2.
        c2.
        a2.:m
        f2.
        c2.
 
    }
    
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' {
        \key c\major 
        c4 c4 d8 (c8)
        a4 g4 a4
        c4 c4 d4 
        e2. 
        \break
        
        d4 d4 d4
        d4 e4 g4 
        a4 g4 e4 
        g2.
        
        \break
        
        a4 a8 (b8) c8 (b8) 
        a4 g4 e4 
        g4 c,4 b4 
        a2 (g4) 
        \break
        
        
        c4 e4 g4
        b8 (g8) e4 c8 (e8)
        d4 c4 c4 
        c2.    
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics { Be thou my vi -- sion, O Lord of my heart;
  naught be all else to me, save that thou art:
  thou my best thoug -- ht, by day or by night,
  wa -- king or sleep -- ing, thy pre -- sence my light.}
  
\addlyrics {Be thou my wis -- dom, and thou my true word;
  I ev -- er with thee and thou with me, Lord;
  thou my great Fa -- ther, and I thy true son,
  thou in me dwell -- ing, and I with thee one.}

\addlyrics {High King of hea -- ven, my vic -- to -- ry won,
  may I reach heaven's joys, O bright hea -- ven's Sun!
  Heart of my own heart, what -- ev -- er be -- fall,
  still be my vi -- sion, O Ru -- ler of all.
 }



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
