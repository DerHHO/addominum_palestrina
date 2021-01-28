\version "2.18.2"
#(ly:set-option 'relative-includes #t)
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\include "../Noten/AdDominumPalestrina_Noten.ly"


\include "dynamicparams.ly"
\include "formatangaben.ly"
\include "mergerests.ly"
\include "optionaltranspose.ly"
\include "Bezeichnungen.ly"


tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))




\book {
  \bookOutputName "Partitur"
  \paper {

    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1.3\cm
    right-margin = 1.3\cm
    print-all-headers = ##f
    #(include-special-characters)


  }
  \header {
    title = \titel
    subsubtitle = \untertitel
    dedication = \widmung
    composer = \komponist
    poet = \herausgeber
    arranger = \arrangeur
    tagline = \schlusszeile
    %instrument = "Partitur (C)"
  }


  \score {

    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreAdDominumPalestrina

    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }
  \markup {
    \fill-line {
      \center-column {
        \line { \bold { Psalm 120 } }
        \line { Ich rief zum HERRN in meiner Bedrängnis und er hat mich erhört. }
        \line { HERR, rette doch mein Leben vor lügnerischen Lippen und vor der falschen Zunge! }
        \line { Was soll er dir geben und was dir noch antun, du falsche Zunge? }
      }
    }
  }
}

