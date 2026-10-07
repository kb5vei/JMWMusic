\version "2.19.83"
\include "gregorian.ly"
\header {
       title = "Psalms for Easter Vigil"
       copyright = "Public Domain"
       Composer = "Jonas Williamson"
}



	
    myChords = \chordmode { \set Staff.midiInstrument = "banjo" \set chordChanges = ##t
 \clef "G_8"
    \key d \major
  \set Score.timing = ##f

        d \breve*1/16 d8 d d d d  c4 d4.
        \divisioMaxima

               
     
    }
    


chant = \relative {
  \clef "G_8"
    \key d \major
  \set Score.timing = ##f
  \omit Stem
  \omit Flag

  a\breve*1/16 \hide NoteHead a8 a a a a
  \undo \hide NoteHead
  fis4 a4.  
\divisioMaxima
    
    b \breve*16 a4 fis4 a4.
\divisioMaxima
    fis \breve*16 e4 fis4 g4.
\divisioMaxima
    fis \breve *16  e4 fis d4.





  }
\addlyrics {This is a test }


\score {
        \new StaffGroup <<
           \new ChordNames \myChords 
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "melody" {
      \chant
    }

  >>
>>

  \layout {
    \context {
      \GregorianTranscriptionVoice
      \consists Stem_engraver
\Staff
    \override VerticalAxisGroup
              .default-staff-staff-spacing
              .basic-distance = 200



 
}
}
}
