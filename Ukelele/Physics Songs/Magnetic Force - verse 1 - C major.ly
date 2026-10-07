\version "2.22.0"
\include "predefined-ukulele-fretboards.ly"
% Magnetic-force lyrics fitted to the traditional Turkey in the Straw melody.
% The source melody is written in F and transposed down to C in each score.
\header {
  title = "Magnetic Force"
  subtitle = "To the tune of Turkey in the Straw - key of C"
  composer = "Traditional"
  arranger = "Physics lyrics and arrangement: Jonas Williamson"
  instrument = "Voice and ukulele"
  tagline = ""
}
\paper { #(set-paper-size "letter") }
global = { \key c \major \time 4/4 \tempo 4 = 112 }
verseMusic = {
  \partial 4
  a'8 g'8 |
  f'4 f'8 g'8 f'8 c'8 a8 bes8 |
  c'8 ( d'8)  c'8 a8 c'4 f'8 g'8 | \break
  a'4 a'8 a'8 a'8 (g'8)  f'8 g'8 |
  a'4 g'4 g'4 a'8 g'8 | \break
  f'4 f'8 g'8 f'8 ( c'8) a8 (bes8) |
  c'8 d'8 c'8 (a8)  c'4 f'8 g'8 | \break
  a'8 c''8 c''8 d''8 c''8 a'8 f'8 g'8 |
  a'4 g'4 f'4 r4 | \break
}
chorusMusic = {
  a'8 c''4 a'8 c''4 c''4 |
  a'8 c''4 a'8  c''2 |
  bes'8 d''4 bes'8 d''4 d''4 | \break
  bes'8 d''4 bes'8 d''2|
  f''8 f''8 f''8 f''8 c''4 c''8 c''8 | \break
  a'4 a'4 g'4 f'8 ( g'8) |
  a'4 c''8 d''8 c''8 (a'8) f'8 (g'8) | \break
  a'4 g'4  f'2 |
}
chorusWords = \lyricmode { F B is q v cross pro -- duct B!
F B is q v cross pro -- duct B!
Use the right hand rule and your thumb will show
Which way the mag -- net -- ic force will go! }
verseChords = \chordmode {
  \partial 4 f4
  f1 f1 f1 c1:7 f1 f1 f1 f4/c c4:7 f2
}
chorusChords = \chordmode {
  f1 f1 bes1 bes1 f1 f2 c2:7 f1 f4/c c4:7 f2
}
\score {
  \header { piece = "Verses" }
  <<
    \new ChordNames { \transpose f c \verseChords }
    \new FretBoards {
      \set FretBoards.stringTunings = #ukulele-tuning
      \transpose f c \verseChords
    }
    \new Staff \new Voice = "verseSinger" {
      \global \transpose f c' \verseMusic \bar "||"
    }
    \new Lyrics \lyricsto "verseSinger" {
      \set stanza = "1."
        When a charge goes a -- mov -- in' through a mag -- net -- ic field, there's a
	force on the charge that the
	field can yield, take the
	vel -- o -- ci -- ty and
	cross it with B and there's
	one lit -- tle e -- qua -- tion that you're
	gon -- na need!
    }
  >>
  \layout { }
}
\pageBreak
\score {
  \header { piece = "Chorus" }
  <<
    \new ChordNames { \transpose f c \chorusChords }
    \new FretBoards {
      \set FretBoards.stringTunings = #ukulele-tuning
      \transpose f c \chorusChords
    }
    \new Staff \new Voice = "chorusSinger" {
      \global
      \override Score.NonMusicalPaperColumn.page-break-permission = ##f
      \transpose f c \chorusMusic \bar "|."
    }
    \new Lyrics \lyricsto "chorusSinger" { \chorusWords }
  >>
  \layout { }
}
\score {
  \new Staff {
    \set Staff.midiInstrument = "flute"
    \global
    \transpose f c { \verseMusic \chorusMusic }
  }
  \midi { }
}
