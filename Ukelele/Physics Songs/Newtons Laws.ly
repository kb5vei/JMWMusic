\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Newton's Laws"
       subtitle = "To the tune of My Country 'tis of Thee"
       composer = "Folk Song"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music Public Domain.  Lyrics and arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
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
     f1
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
        a4 a4 bes8 bes8
                \break
                
        a4. g8 f4

        
        g4 f4 e4 
        f2.
                \break
                
        c'4 c4 c4
        c4. bes8 a4
        bes4 bes bes 
        \break

        bes4. a8 g4
        a4 bes8  a  g f
        \numericTimeSignature
        \time 4/4
                \break
        a4 a4. bes8 c4 
        

        \time 3/4
        d8  bes8  a4 g4
        
        
        f2.
         
        
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics {Ob -- jects at rest will stay, ob -- jects that move go a -- way, New -- ton's first law.  Net force is m times a, Force will ac -- cel -- er -- ate an ob -- ject on a path curved or straight, 
	New -- ton's Sec -- ond law.  }
	\addlyrics {When a force is ap -- piled, a re -- ac -- - tion is spied, at the same time.  E -- qual and op -- po -- site, like a pro -- jec -- tile's kick, for ev - ery - force: push   or pull, New ton's third - law.  }



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
