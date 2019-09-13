%{ Welcome to LilyPond %}

\header{ title = "2.4.2 Guitar in LilyPond" }

%{ Line 1 %}
ChordsAndSymbols = {
	\chordmode {
		\powerChords
    		f,,1:1.5:m  
    		a,,1:1.5.8
    		\set minimumFret = #4
    		c,1:1.5
    		f,1:1.5.8
			e4 e4. 
			f:min7
  	}
  	\set minimumFret = #5
  	<a, e>1
  	<a, e>1
	<g d' g'>1
}

\score {
<<
    \new ChordNames {
  		\set additionalPitchPrefix = #"add"
  		<g e g d'> % add9 %{ EM7 %}
  		\set additionalPitchPrefix = #"add"
  		<c e g d'> % add9 %{ C add9 %}
    	\ChordsAndSymbols
	\chordmode {
		\powerChords
    		f,,1:1.5:m  
    		a,,1:1.5.8
    		\set minimumFret = #4
    		c,1:1.5
    		f,1:1.5.8
			e4 e4. 
  	}

    }
    \new Staff {
      	\clef "treble_8"
		\time 3/4 
      	\ChordsAndSymbols
  		\addlyrics { joue le jeu la la la la la}
    }
    \new TabStaff {
		\ChordsAndSymbols
    }
>>
}

 




%{ Line 2 %}
\relative c' { 
	\time 3/4 
	d8 c16 a 
	bes8 e4 e4. 
	e8 d4 e 
	d c2. 
}
\addlyrics { "\"I" am so lone -- "ly,\"" said she }
\addlyrics { „Schad’ um das schö -- ne grü -- ne Band, }
 




{
\clef "treble_8"
b16 d g b e
e e e e
\textSpannerDown
\override TextSpanner.bound-details.left.text = #"XII "
g16
\startTextSpan
b16 e 
\stopTextSpan
g e b g 
}  

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
