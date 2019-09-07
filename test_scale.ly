%{ Welcome to LilyPond %}

\header{ title = "2.4.2 Guitar in LilyPond" }

%{ Line 1 %}
\relative c'' { d8 c16 a bes8 f e' d c4 }
\addlyrics { „Schad’ um das schö -- ne grü -- ne Band, }




%{ Line 2 %}
\relative c' { 
	\time 3/4 
	e4 e4. e8 d4 e d c2. 
}
\addlyrics { "\"I" am so lone -- "ly,\"" said she }




%{ Line 2 %}
\relative c, { 
	\time 3/4 
	e4 e4. e8 d4 e d c2. 
}
\addlyrics { "\"I" am so lone -- "ly,\"" said she }




%{ Line 3 %}
{
  \time 3/4
  \relative c' { c2 e4 g2. }
  \addlyrics { play the game }
  \addlyrics { speel het spel }
  \addlyrics { joue le jeu }
}




{
\clef "treble_8"
b16 d g b e
\textSpannerDown
\override TextSpanner.bound-details.left.text = #"XII "
g16
\startTextSpan
b16 e 
\stopTextSpan
g e b g
e16 b g d 
}

ChordsAndSymbols = {
  \chordmode {
    \powerChords
    e,,1:1.5
    a,,1:1.5.8
    \set minimumFret = #8
    c,1:1.5
    f,1:1.5.8
  }
  \set minimumFret = #5
  <a, e>1
  <g d' g'>1
}
\score {
  <<
    \new ChordNames {
    \ChordsAndSymbols
    }
    \new Staff {
      \clef "treble_8"
      \ChordsAndSymbols

  	\addlyrics { joue le jeu la la la}
    }
    \new TabStaff {
      \ChordsAndSymbols
    }
  >>
}

  

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
