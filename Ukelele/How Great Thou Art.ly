\version "2.7.39"
\include "predefined-ukulele-fretboards.ly"
\header {
       title = \markup {"How Great Thou Art / Ke Akua Mana" \char ##x0112 " "}
       composer = "Carl Gustav Boberg"
       instrument = "Ukelele"
       arranger = "arr. Jonas Williamson"
       copyright = \markup { "Music and Lyrics Public Domain.  Arrangement " \char ##x00A9 "Jonas Williamson, 2023" }
       tagline = "Hawaiian translation by Albert Nahalea"
}


     global = {
        \time 4/4
	\tempo 4=60
	
}
     

	
    myChords = \chordmode { \set chordChanges = ##t
    \partial 4. c4.
    c2 f2
    f1
    c2  g2
    c1
    c2 f2
    f1
    c2 g2 

    c1
    c2 f2
    c1
    g1
    c1
    c2 f2
    c1
    g2 ~ g4 f8 g8
    c2 ~ c8

    
    
    

    
    




    
      
    }
    fretBoards = {  \set Staff.stringTunings = #ukulele-tuning
        \override FretBoard.fret-diagram-details.finger-code = #'in-dot
        \myChords}

     vocals =  \relative c'' {
        \key c\major 
 
    \partial 4.  g8 g8 g8
    e4. g8 g8 g8 a8 a8 
    f4 a4 ~ a8 a8 a8 a8 
    g4. e8 g8 g8 f8 f8
    g2 ~ g8 g8 g8 g8
    e4. 8 g8 g8 a8 a8
    f4 a4 ~ a8 a8 a8 a8 
    g4. e8 g8 g8 f8 f8 
    g2 ~ g8 g8 g8 c8 \bar "||"
    e4. d8 c8 b8 c8 a8
    g2 ~ g8 c8 c8 b8
    d,2 ~ d8 f8 a8 g8 
    e2 ~ e8 g8 g8 c8 
    e4. d8 c8 b8 c8 a8
    g2 ~ g8 c8 b8 c8 
    d2 ~ d8 e8 f8 b,8
    c2 ~ c8 
       

        \bar "|."
     }
  
	\addlyrics { Oh Lord my God, when I in awe -- some won -- der con -- si -- der all the works thy hand has made, I see the stars, I hear the roll -- ing thun -- der Your power throug -- out the u -- ni -- verse dis -- played.  Then sings my soul, my sav -- ior God to thee, How great thou art, how great thou art. Then sings my soul, my sav -- ior God to thee, How great thou art, how great thou art.  }

	\addlyrics {E ke A -- kua na -- ni ka -- ma -- ha -- ʻo -- , Nāu nō i hana ka ho -- n -- u -- a nei, Me nā hō -- kū, ka ui -- la, ka he -- ki -- li Hō -- ʻi -- ke a -- na i Kou ma -- na ē. E me -- le au i ka Ho -- ʻō -- la ē, He na -- ni nō, he na -- ni nō E me -- le au i ka Ho -- ʻō -- la ē, He na -- ni nō, he na -- ni nō.}



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
