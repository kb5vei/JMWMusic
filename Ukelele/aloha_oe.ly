\version "2.19.83"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = "Aloha ʻOe"

       subtitle  = "adapted from Ukelele Underground"
       composer = "Queen Liliʻuokalani"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
}


     global = {
        \time 4/4
	\tempo 4=30
	
}
     

	
    myChords = \chordmode {
    f1
    c1
    g1:7
    c2 g2:7


    c2  f2
    c1
    g1:7
    g1:7
    c2 f2
    c1
    f2 g2:7
    c2 c2:7

\repeat volta 2 {
f1
c1
g1:7
c2 c2:7
f1
c1}

    \alternative {
    {
    g1:7
    c2 c2:7} {
    g1:7
    c4}
}






      
    }
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \transpose g c' {\relative c' {
        \key g\major 
 
    r1
    r1     
    r1
    r2 r4 d8. g16 \break

    b8 b4 a8 g8. fis16 g8 e8
    d2 d4 b'4
    a8 a4 a8 gis8 a8 c8 b8 

    a2 a4 d,8. g16 
    b8 b4 a8 g8. fis16 g8 e8
    d2 d4 g8 fis8
    e8 e8 a8 g8 fis8 fis8 b8 a8 g2. r8 d8 
    

   e4 g4 c4. e,8
   d4 g4 b4 g8. g16
   fis8. e16 fis8 g8 a8 a8 c8 c8
   b2 g4 r8 d8 
   e4 g4 c4. e,8
   d8 d8 g8 g8 b4. g8
    
        fis4. g8 b8 ( a4)  fis8
        g2. r8 d8
        fis4. g8 b8 ( a4)  fis8
        g2.  \bar "|."
    
  }}
 

   


      
       

 
        
    

	\addlyrics { Ha ʻa- he- o  ka u- a i nā pa- li
Ke ni- hi aʻe- la i ka na- he- le
E u- hai a- na pa- ha i ka li- ko
Pu- a hi- hi le- hu- a ʻā-  o u- ka


A- lo- ha ʻoe, a- lo- ha ʻoe
E ke o- na- o- na no- ho i ka li- po
One fond em- brace,
A ho- ʻi a- ʻe au
Un- til we meet a- gain A-
til we meet a- gain.
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


        \midi { \tempo 2=90}
     }  
