\version "2.8.8"

\header {
       title = "No. 11: Fantaisie and Variations"
	subtitle = "on"
       copyright = "Copyright 1912 by Carl Fischer, Inc., New York"
	composer = "J B Arban"
        arranger = "Transposed by Williamson"
	instrument = "The Carnival of Venice - C BC Instruments"
}


     global = {
        \time 6/8
	\tempo 4.=80
	
}
   
\paper {
  between-system-padding = #1
  ragged-bottom=##f
  ragged-last-bottom=##f
 #(set-paper-size "letter")
}

\layout{
  \context { \Score
    \override MetronomeMark #'extra-offset = #'(-9 . 0)
    \override MetronomeMark #'padding = #'3
  }}
  
     


   trombone = \relative c {
         \set Staff.midiInstrument = "trombone" \transposition c'
        \clef bass \key f \major 
	%\override Score.BarNumber #'break-visibility = #end-of-line-invisible    	%Prints Bar Numbers in all measures
	 \override TextScript #'padding = #3				%Raises Text to keep from running into bar numbers.
	\set Score.markFormatter = #format-mark-numbers		%Boxes around rehearsal Marks
	\set Score.skipBars = ##t				%Compresses Multi-measure rests
	\override MultiMeasureRest #'expand-limit = 1
%piano cues
	\partial 16  \tiny c16  ^\markup {Introduction} \f
	c8. ( b16 c d ) c ( f ) a, ( c ) f, ( a )
	c,8. ( f16 a d ) c4 r16 c16
	bes8. ( a16 ) g a bes c d e f g 
	a8. ( e16 f a,) c4 r16 f16
	f8. ( e16 d  cis ) d ( cis d e f a ) \break
	g8. ( a16 bes a ) g ( f e d c bes )
	a8. ( c16 f a ) a ( g fis g bes e, )
	f8 r8 r8 r4 \normalsize c8 ^\markup {Solo} \mf
	c4 \< c8 \! \acciaccatura e8 d4 ( \> c8 ) \! 
	f,4 f8 ( \< bes4 \! a8 )
	a4. ~ \> ( a8 g c, ) \!
	f4 r8 r4 f8 ( \break

	g4 \< d8 a'4 d,8 \! ) 
	c'4 (bes8 ) a8 \( \>  \acciaccatura c8 bes g \) \!
	f4. (  ^\markup {\musicglyph #"scripts.turn"}  f4 g8 )
	e4. ~ e8 r8 c'
	c4 \< c8 \! \acciaccatura e8 d4 \> c8 \!
	f,4 f8 ( \< bes4 \! a8 )
	a4. ~ \> ( a8 g c, ) \!
	f4. ~ f4 a8
	g4 ( \< d'8 ) \! d4 d8 \break

	d4 (c8 ) a4 b8
	d2. -> (
	c8 ) \> c4 \! \fermata r8 g8 ( a)
	bes4 \< bes8 bes4 bes8
	bes4 bes8 (e4 d8 ) \! 
	cis4. \( \acciaccatura {cis16 [ d ]  } cis8 b cis \)
	d4. ~ d8 bes ( a ) 
	gis4-> ( f8 e4 d8
	d'4) \times 2/3 {f,16 ( g f } e4^\markup{\italic rall.} d8 ) \break
	
	a'4. ~ \fermata a4 a8
	\acciaccatura a8 g^\markup {\italic a \italic tempo} \mf ( fis g ) e'4 d8
	f,4 f8 ( \< a4 d8 ) \! 
	c4. \> ( ~ c4 bes8 ) \!
	a2.
	\acciaccatura a8 g ( fis g ) e'4 d8
	f,4 (  \times 2/3 {f16 g f} e4  ) d8	
	c8 (  b c ) a'4 ^\markup {\italic rall.} (g8 )
	f4. ~ f8 r8 r8
	R2.*7 ^\fermataMarkup
	\bar "||" \break
	
	
%Theme


	\tempo 4.=88 \time 6/8  r2. ^\markup {Theme} 
	r4 r8 r4 c'8-. \p
	d8-. r8 c \acciaccatura d8 bes4 ( a8 )
	\acciaccatura a8 b8-. g r r g8-. a-.
	bes4 ( b8 ) \acciaccatura b8 d4 ( c8 )
	\acciaccatura c8 a4 r8 r4 c8 
	f4-> ( c8 ) \acciaccatura {c16 [ d] } c8 bes-. a-. \break
	
	\acciaccatura { a16 [ c16 ] } bes8 ( g ) r8 r g a
	bes4 ( b8 ) \acciaccatura b8 d4 ( c8 ) 
	\acciaccatura c8 a4 r8 r4 c8
	c (bes ) a-. a ( g ) f-. 
	f ( e) r r g-. a-. bes4 ( b8 ) \acciaccatura b8 d4 ( c8 )
	a4 r8 r4 c8
	c ( bes ) a a ( g ) f \break

	f ( e ) r r g a 
	bes4 ( b8) \acciaccatura b8 d4 ( c8 ) 
	f,4 r8 r r16 c'16 \p ( b c )
	d16 ( c b c a c ) f, ( a ) c, ( f ) a-. d-.
	c ( b c a bes fis g8 ) r16 c ( \< b c
	des c b c des c \! d \> c b! c bes c ) \! \break

	bes ( a d c gis a )  a8 r16 c ( b c )
	d16 ( c b c a c ) f, ( a ) c, ( f ) a-. d-.
	c ( b c a bes fis g8 ) r16 c ( \< b c
	des c b c des c \! d \> c b! c bes c ) \! \break

	bes ( a d c gis a )  a8 r8 c8 \mf
	c16 ( f ) f ( a, ) a ( c ) c ( f, ) f ( a ) g f
	e e \< ( g ) g ( bes ) bes (d8 ) \! r16 c ( b  c) 
	des-> ( c) c-. e ( g) c, (e) bes ( d) g, ( bes ) e,-. 
	g ( \< f e f ) a-. c-. \! f4 c8 \break

	c16 ( f ) f ( a, ) a ( c ) c ( f, ) f ( a ) g f
	e e \< ( g ) g ( bes ) bes (d8 ) \! r16 c ( b  c) 
	des-> ( c) c-. e ( g) c, (e) bes ( d) g, ( bes ) e,-. 
	g ( \< f e f ) a-. c-. \! f4 r8
	R2.*7 \break

%Var. I

	\time 6/8 r4. ^\markup {Var. I (\note #"8" #1 ) } r8 r16 c\p b c
	\times 2/3 { d16 [ ( e  d)] } c16 [ c, ] c'8-> \times 2/3 {bes16 [ ( c bes ] ) } a16 [ a, ] a'8->
	\times 2/3 { c16 [ ( d  c)] } bes16 [ bes, ] \times 2/3 { bes'16 [ ( a  bes)] } g4-- \times 2/3 { f'16 [ ( g  f)] } 
	e16 [ d c d ] \times 2/3 { e16 [ ( f  e)] } d [ c bes a ] \times 2/3 { bes16 [ ( c  bes)] } \break

	a16 [ gis a c] c, [ c'] a8 r16 c b c
	\times 2/3 { d16 [ ( e  d)] } c16 [ c, ] c'8-> \times 2/3 {bes16 [ ( c bes ] ) } a16 [ a, ] a'8->
	\times 2/3 { c16 [ ( d  c)] } bes16 [ bes, ] \times 2/3 { bes'16 [ ( a  bes)] } g4-- \times 2/3 { f'16 [ ( g  f)] } 
	e16 [ d c d ] \times 2/3 { e16 [ ( f  e)] } d [ c bes a ] \times 2/3 { bes16 [ ( c  bes)] } \break

	a16 [ gis a c] c, [ c'] a8 r8 c8
	f32 [ f e e] ees [ ees d d]  des \> [ des c c ] b [ b bes bes ] a [a aes aes ] g[ g f f ] \!
	e8 << { c'4 ~ \startTrillSpan c4. \stopTrillSpan } { s4 \afterGrace s4. { b16[ c] } } >> \break
 
	g'32 [ g fis fis] f\> [ f e e]  ees [ees d d ] cis [cis c c ] b [b bes bes ] a [a g g] \!
	f8 << { c'4 ~ \startTrillSpan c4. \stopTrillSpan } { s4 \afterGrace s4. { b16[ c] } } >> 
	f32 [ f e e] ees [ ees d d]  des \> [ des c c ] b [ b bes bes ] a [a aes aes ] g[ g f f ] \! 

	e8 << { c'4 ~ \startTrillSpan c4. \stopTrillSpan } { s4 \afterGrace s4. { b16[ c] } } >> 
	g'32 [ g fis fis] f\> [ f e e]  ees [ees d d ] cis [cis c c ] b [b bes bes ] a [a g g] \! 
	f4 r8 r8 r32 c' [ \ff (b c ] d [ c b c ] ) \break


	f8  r32 c, \p ( [ b c]  a [ c ) f-. a-.] c8 r32 c \ff [ ( b c ] d [c b c] )
	bes r32


	
	
	
	

	
	
	
	

}
     
     
     \score {
        \new StaffGroup <<
           \new Staff << \global \transpose c bes \trombone >>
  
    	    	 >>


        \layout { }
        \midi { \tempo 4=120}
     }