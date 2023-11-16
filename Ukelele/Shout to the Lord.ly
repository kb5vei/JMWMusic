\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Shout to the Lord"
       composer = "Hillsong / Darlene Zschech"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
        copyright = \markup { "Music and Lyrics by Darlene Zschech.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
        tagline = ""}


     global = {
        \time 4/4
	\tempo 4=90
	
}
     

	
    myChords = \chordmode { \set Staff.midiInstrument = "banjo" \set chordChanges = ##t
        c1
        g1
        a1:min
        f1
        c1
        c1
        f1
        g1

        c1
        g1
        a1:min
        f1
        c1
        c1
        f1
        g1

        c2 f2
        c2 g2
        c2 f2
        c2 g2
        a1:min
        f1
        g1
        g1

        c2 f2
        c2 g2
        c2 f2
        c2 g2
        c2 f2
        c2 g2
        c1            
    
    


        
       
       
 
    }
    
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c' { \set Staff.midiInstrument = "banjo"
        \key c\major 
     r4 e4 f4 g4
    r4 b,4 c4 d4
    c'8 c8 c8 b8 ~ b8 g8 ( e8 ) a8 ~ 
    \break 

    a4 r4 c8 b8 a8 g8 ~ 
    g4 r4 c8 b8 a8 g8 ~ 
    g4. g8 g8 f8 e8 c8 
    \break

    d2 d2 
    d2. r4
   r4 e4 f4 g4
    \break
    r4 b,4 c4 d4
    c'8 c8 c8 b8 ~ b8 g8  e8  a8 ~ 
    a4 r4 c8 b8 a8 g8 ~ 
    \break    

    g4 r4 c8 b8 a8 g8 ~
    g4 r4 c8 c8 a8 c8
    d2 d2 d2. r4 
    \break 

    c8 c8 b8 c8 ~ c8 c8 b8 c8 ~
    c8 c8 b8 a8 ~ a4 r4
    c8 c8 b8 c8 ~ c8 c8 d8 e8 ~
    \break 


    e8 d8 c8 d8 ~ d4 r4 
    c8 c8 b8 c8 ~ c8 c8 b8 c8 ~
    c8 b8 a8 ~ a4. a8 c8 
\break
    b8 (g4.)  a4 a4 
    b2 ( d2 )


    c8 c8 b8 c8 ~ c8 c8 b8 c8 ~
\break



    c8 c8 b8 a8 ~ a4 r8 a8
    c8 c8 b8 c8 ~ c8 c8 r8 d8 
    e8 d8 c8 d8 ~ d4 r4

    \break
    c8 c8 b8 c8 ~ c8 c4 b8 
    c8 c8 b8 a4. b4 
    c1


    
    

    
    
       

      
        
        
        
 
    
        \bar "|."
    
  }
 

         
    

	\addlyrics {My Je -- sus, my sav -- ior, Lord there is none like you.  All of my days I want to praise the won -- ders of your might -- y love.  My com -- fort, my shel -- ter, Tow -- er of ref -- uge and strength, let ev -- ery breath, all that I am, nev -- er cease to wor -- ship you.  Shout to the Lord, all the earth, let us sing; Pow -- er and maj -- es -- ty praise to the King!  Moun -- tains bow down and the seas will roar at the sound of your name. I sing for joy at the work of your hands; for -- ev -- er I'll love you for -- ev -- er I'll stand  no -- thing com -- pares to the pro -- mise I have in you. }



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


        \midi { \tempo 4=130}
     }  
