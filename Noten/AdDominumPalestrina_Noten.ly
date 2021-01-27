
\version "2.18.2"
% automatically converted by musicxml2ly from Ad_Dominum_cum_tribularer.mxl

\header {
  encodingsoftware = "CapToMusic.py CapXML to MusicXML converter version 2.4"
  encodingdescription = "Options: FinaleDolet33=1, ChordCaseMatters=1, ExportToSibelius=0"
  encodingdate = "2017-12-23"
}

\include "../../formatangaben.ly"
\include "optionaltranspose.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #})) 

\header {
  title = "Ad Dominum cum tribularer clamavi"
  composer = "G. P. da Palestrina (1526–94)"
  tagline = ##f
}

#(set-global-staff-size 16)
mBreak = { }

globalAdDominumPalestrina = {
  \accidentalStyle modern-voice
  \key g\dorian
  \taktstil
  \time 4/4
  \autoBeamOff
}

sopranNotenAdDominumPalestrina = \optionalTranspose \relative g' {
  \globalAdDominumPalestrina
  g1 | % 2
  d'4. d8 d4 cis4 | % 3
  d4 d4 f2 | % 4
  e4 d4. ( c16 [ bes16 ] a4 ) | % 5
  bes4.  ( a8 g2 ) | % 6
  f4 f'4. ( d8 e4 ) \mBreak | % 7
  f8 ( [ e8 d8 c8 ] d4 c4 ~ | % 8
  c8 [ bes8 ] g4 ) a2 ~ | % 9
  a2 bes2 | \barNumberCheck #10
  g4 a4 bes2 | % 11
  bes4 g4 a2 | % 12
  a2 r2 \mBreak | % 13
  r2 d2 ~ | % 14
  d4 f2 e4 | % 15
  d4 c4 bes2 | % 16
  g2 d'2 | % 17
  c4 bes4 a4 ( g4 ~ | % 18
  g8 [ fis8 ] fis4 ) g2 | % 19
  R1 \mBreak | \barNumberCheck #20
  b2. b4 | % 21
  b4 c2 c4 | % 22
  c4 c4. c8 c4 | % 23
  d4. d8 g,4 es'4 ( ~ | % 24
  es8 [ d8 ] d8 [ c16 bes16 ] c2 ) | % 25
  d4 d2 d4 \mBreak | % 26
  d1 | % 27
  r2 r4 d4 ~ | % 28
  d8 d8 a4 c2 | % 29
  a2 r2 | \barNumberCheck #30
  r2 r4 d4 | % 31
  g4. g8 g4 f4 \mBreak | % 32
  es4. ( d8 c2 ) | % 33
  b4 b4 c4 d4 | % 34
  g,4 bes2 ( a8 [ g8 ] | % 35
  f4 ) g4. ( fis8 fis4 ) | % 36
  g4 c4 bes4 a4 | % 37
  f4 g4 a2 ~ | % 38
  a2 a2 \mBreak | % 39
  r4 a4 a4 a4 | \barNumberCheck #40
  b2 c2 ~ | % 41
  c2 r2 | % 42
  R1 | % 43
  r4 c2 bes4 | % 44
  g4 a4 bes4 c4 ~ \mBreak | % 45
  c4 bes4. ( a8 a4 ~ | % 46
  a4 g4 a4 bes4 ) | % 47
  a2 r4 a4 ~ | % 48
  a4 bes2 g4 | % 49
  a4 bes4. ( a8 g4 ~ | \barNumberCheck #50
  g4 fis8 [ e8 ] fis2 ) \mBreak | % 51
  g2 r4 d'4 | % 52
  bes4 ( c4 ) d2 ~ | % 53
  d2 r4 a4 | % 54
  bes2 g4 a4 | % 55
  bes1 | % 56
  a1 ^\fermata \bar "|."
}

sopranTextAdDominumPalestrina = \lyricmode {
  Ad Do -- mi -- num cum tri -- bu -- la -- rer
  cla -- ma -- vi, cla -- ma -- vi, __
  cum tri -- bu -- la -- rer cla -- ma -- vi,
  et ex -- au -- di -- vit me, 
  et ex -- au -- di -- vit me. 
  Do -- mi -- ne, Do -- mi -- ne, 
  li -- be -- ra a -- ni -- mam me -- am, 
  Do -- mi -- ne, a -- ni -- mam me -- am 
  a la -- bi -- is i -- ni -- quis, 
  et a lin -- gua do -- lo -- sa, 
  et a lin -- gua do -- lo -- sa.
  Quid de -- tur ti -- bi, 
  aut quid ap -- po -- na -- tur ti -- bi 
  ad lin -- guam do -- lo -- sam, 
  do -- lo -- sam, 
  ad lin -- guam do -- lo -- sam?
}

altNotenAdDominumPalestrina = \optionalTranspose \relative d' {
  \globalAdDominumPalestrina
  R1*2 | % 3
  d1 | % 4
  g4. g8 g4 fis4 | % 5
  g4 g4 bes2 | % 6
  a1 \mBreak | % 7
  a4 bes2 ( a4 ~ | % 8
  a8 [ g8 ] g2 fis8 [ e8 ] | % 9
  fis2 ) g4 g4 | \barNumberCheck #10
  bes4 a4 g2 | % 11
  f4 d4 e2 | % 12
  f4. ( g8 a2 ) \mBreak | % 13
  r4 a4 bes2 ~ | % 14
  bes4 a4 f4 g4 ( ~ | % 15
  g8 [ d8 ] f4 ) g4 g4 | % 16
  bes2. a4 | % 17
  g4 f4 es4 ( d4 ) | % 18
  r4 c4 es4 d4 | % 19
  c4 bes4 a2 \mBreak | \barNumberCheck #20
  d2. d4 | % 21
  d4 g2 g4 | % 22
  g2 a4. a8 | % 23
  a4 bes4. bes8 c4 ( ~ | % 24
  c8 [ bes8 ] bes2 ) a4 | % 25
  bes4 bes2 bes4 \mBreak | % 26
  bes4 f4. f8 g4 | % 27
  a4. a8 d,4 bes'4 ( ~ | % 28
  bes8 [ a8 ] a8 [ g16 f16 ] g2 ) | % 29
  f4 f4 g4. g8 | \barNumberCheck #30
  g4 f4 es8 ( [ d8 ] d4 ~ | % 31
  d4 c4 ) d4 d4 \mBreak | % 32
  g4. ( f8 es2 ) | % 33
  d2 r4 d4 | % 34
  e!4 f4 g4 a4 | % 35
  bes2 a4 a4 | % 36
  g4 f4 d4 f4 ~ | % 37
  f4 e8 ( [ d8 ] cis4. d8 | % 38
  e8 [ d16 e16 ] f4 e2 ) \mBreak | % 39
  fis4 fis4 fis4 fis4 | \barNumberCheck #40
  g2 a4 a4 ~ | % 41
  a4 g4 e4 f4 | % 42
  g4 c,4 d4 ( g4 ~ | % 43
  g4 fis4 ) g2 | % 44
  R1 \mBreak | % 45
  r4 g2 f4 | % 46
  d4. e8 f4 g4 | % 47
  e2 e2 | % 48
  f2 g2 | % 49
  es4 f4 g2 | \barNumberCheck #50
  a4 a2 bes4 ~ \mBreak | % 51
  bes4 g4 a4 bes4 ( ~ | % 52
  bes4 a8 [ g8 ] fis4 ) g4 ( ~ | % 53
  g4 fis8 [ e8 ] fis4 ) fis4 | % 54
  g2 bes4 a4 | % 55
  g1 | % 56
  fis1 ^\fermata \bar "|."
}

PartPTwoVoiceOneLyricsOne =  \lyricmode {
  Ad Do -- mi -- num cum 
  tri -- bu -- la -- rer cla -- ma -- vi,
  cum tri -- bu -- la -- rer cla -- ma -- vi, 
  et ex -- au -- di -- vit __ me, 
  et ex -- au -- di -- vit me, 
  et ex -- au -- di -- vit me. 
  Do -- mi -- ne, Do -- mi -- ne, 
  li -- be -- ra a -- ni -- mam __ me -- am, 
  Do -- mi -- ne, li -- be -- ra a -- ni -- mam me -- am 
  a la -- bi -- is i -- ni -- quis, 
  i -- ni -- quis, et a lin -- gua do -- lo -- sa, 
  et a lin -- gua do -- lo -- sa. 
  Quid de -- tur ti -- bi, 
  aut quid ap -- po -- na -- tur ti -- bi, 
  aut quid ap -- po -- na -- tur ti -- bi 
  ad lin -- guam do -- lo -- sam, 
  ad lin -- guam do -- lo -- sam, 
  ad lin -- guam do -- lo -- sam?
}

tenorNotenAdDominumPalestrina=  \relative g {
  \globalAdDominumPalestrina
  \clef "G_8"
  R1*4 | % 5
  g1 | % 6
  d'4. d8 d4 cis4 \mBreak | % 7
  d4 d4 f2 | % 8
  es4 es4 d2 | % 9
  d1 ~ | \barNumberCheck #10
  d2 r4 g,4 | % 11
  d'4. d8 d4 cis4 | % 12
  d4 d4 f4 e4 \mBreak | % 13
  fis2 g2 | % 14
  d2 r2 | % 15
  r2. d4 ~ | % 16
  d4 g2 f4 | % 17
  es4 d4 ( c4 bes4 ) | % 18
  a2 ( g2 ) | % 19
  R1 \mBreak | \barNumberCheck #20
  r4 g'2 g4 | % 21
  g4 e2 e4 | % 22
  e2 f4. f8 | % 23
  f4 g4. g8 c,4 | % 24
  g'2 f2 | % 25
  r4 f2 f4 \mBreak | % 26
  f2 d4. d8 | % 27
  e4 f4. f8 g4 ( ~ | % 28
  g8 [ f8 ] f2 ) e4 | % 29
  f4 c4 d4. d8 | \barNumberCheck #30
  d4 c4 bes4. ( a8 | % 31
  g2 ) a4 b4 \mBreak | % 32
  c2 g'2 ~ | % 33
  g4 g,4 a4 b4 | % 34
  c4 d4 es2 | % 35
  d1 | % 36
  r4 a4 bes4 c4 | % 37
  d4 e4 f4 ( e8 [ d8 ] | % 38
  cis4 d2 cis4 ) \mBreak | % 39
  d4 d4 d4 d4 | \barNumberCheck #40
  d2 f4 f4 ~ | % 41
  f4 e4 c4 d4 | % 42
  e4 f4. ( d8 es4 ) | % 43
  c2 d4 g4 ~ | % 44
  g4 f4 d4 e4 \mBreak | % 45
  f4 g4 e4 ( f4 ~ | % 46
  f4 e8 [ d8 ] c8 [ a8 ] d4 ~ | % 47
  d4 cis8 [ b8 ) ] cis2 | % 48
  d2 es2 | % 49
  c4 d4 es2 | \barNumberCheck #50
  d1 \mBreak | % 51
  bes2 c4 f,4 | % 52
  g2 a4 ( bes4 ) | % 53
  a1 | % 54
  r4 g4 d'2 | % 55
  d4 d4 d2 | % 56
  d1 ^\fermata \bar "|."
}

tenorTextAdDominumPalestrina =  \lyricmode {
  Ad Do -- mi -- num 
  cum tri -- bu -- la -- rer cla -- ma -- vi, 
  ad Do -- mi -- num 
  cum tri -- bu -- la -- rer cla -- ma -- vi, 
  et ex -- au -- di -- vit me. 
  Do -- mi -- ne, Do -- mi -- ne, 
  li -- be -- ra a -- ni -- mam me -- am,
  Do -- mi -- ne, 
  li -- be -- ra a -- ni -- mam me -- am 
  a la -- bi -- is i -- ni -- quis, i -- ni -- quis, 
  et a lin -- gua do -- lo -- sa, 
  et a lin -- gua do -- lo -- sa. 
  Quid de -- tur ti -- bi, 
  aut quid ap -- po -- na -- tur __ ti -- bi, 
  aut quid ap -- po -- na -- tur ti -- bi 
  ad lin -- guam do -- lo -- sam, 
  ad lin -- guam do -- lo sam, 
  ad lin -- guam do -- lo -- sam?
}

bassNotenAdDominumPalestrina =  \relative d {
  \globalAdDominumPalestrina
  \clef "bass"
  R1*6 \mBreak | % 7
  R1 | % 8
  r2 d2 ~ | % 9
  d2 g4. g8 | \barNumberCheck #10
  g4 fis4 g4 g4 | % 11
  bes2 a2 | % 12
  d,4 d'4. ( cis16 [ b16 ] cis4 ) \mBreak | % 13
  d2 r4 g,4 ~ | % 14
  g4 d'2 c4 | % 15
  bes4 a4 g2 ~ | % 16
  g2 r2 | % 17
  r2. g4 | % 18
  c2. bes4 | % 19
  a4 g2 ( fis4 ) \mBreak | \barNumberCheck #20
  g4 g2 g4 | % 21
  g4 c,2 c4 | % 22
  c2 r2 | % 23
  R1*2 | % 25
  r4 bes2 bes4 \mBreak | % 26
  bes2 bes'4. bes8 | % 27
  c4 d4. d8 g,4 | % 28
  d'2 c2 | % 29
  f,2 bes4. bes8 | \barNumberCheck #30
  bes4 a4 g4. ( f8 | % 31
  es2 ) d2 \mBreak | % 32
  c2 c2 | % 33
  g'2 r2 | % 34
  R1 | % 35
  r2 d2 | % 36
  e4 f4 g4 a4 | % 37
  bes2 a2 ~ | % 38
  a1 \mBreak | % 39
  d,4 \rest d4 d4 d4 | \barNumberCheck #40
  g2 f2 | % 41
  d4 \rest c'2 bes4 | % 42
  g4 a4 bes4 c4 | % 43
  a2 g2 | % 44
  d4 \rest d'2 c4 \mBreak | % 45
  a4 bes4 c4 d4 | % 46
  bes2 ( a4 g4 ) | % 47
  a1 | % 48
  R1*2 | \barNumberCheck #50
  d,1 \mBreak | % 51
  es2 c4 d4 | % 52
  es2 d2 | % 53
  d1 | % 54
  g2 g4 fis4 | % 55
  g1 | % 56
  d1 ^\fermata \bar "|."
}

bassTextAdDominumPalestrina =  \lyricmode {
  Ad Do -- mi -- num 
  cum tri -- bu -- la -- rer cla -- ma -- vi, 
  et ex -- au -- di -- vit me, 
  et ex -- au -- di -- vit me. 
  Do -- mi -- ne, Do -- mi -- ne, 
  Do -- mi -- ne, li -- be -- ra 
  a -- ni -- mam me -- am 
  a la -- bi -- is i -- ni quis, 
  i -- ni -- quis, 
  et a lin -- gua do -- lo -- sa. 
  Quid de -- tur ti -- bi, 
  aut quid ap -- po -- na -- tur ti -- bi, 
  aut quid ap -- po -- na -- tur ti -- bi 
  ad lin -- guam do -- lo -- sam, 
  ad lin -- guam do -- lo -- sam?
}

% The score definition
scoreAdDominumPalestrina = {
  \transpose c c <<
    \new ChoirStaff <<
      \new Staff <<
        \set Staff.instrumentName = "Sopran"
        \set Staff.shortInstrumentName = "S"
        \context Staff <<
          \context Voice = "vsop" { \sopranNotenAdDominumPalestrina }
          \new Lyrics \lyricsto "vsop" \sopranTextAdDominumPalestrina
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Alto"
        \set Staff.shortInstrumentName = "A"
        \context Staff <<
          \context Voice = "valt" { \altNotenAdDominumPalestrina }
          \new Lyrics \lyricsto "valt" \PartPTwoVoiceOneLyricsOne
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Tenor"
        \set Staff.shortInstrumentName = "T"
        \context Staff <<
          \context Voice = "vten" { \tenorNotenAdDominumPalestrina }
          \new Lyrics \lyricsto "vten" \tenorTextAdDominumPalestrina
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Bass"
        \set Staff.shortInstrumentName = "B"
        \context Staff <<
          \context Voice = "vbass" { \bassNotenAdDominumPalestrina }
          \new Lyrics \lyricsto "vbass" \bassTextAdDominumPalestrina
        >>
      >>

    >>

  >>
  %\midi {
  %  \tempo 4 = 120
  %}
}

