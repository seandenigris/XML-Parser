class initialization
initializeCharacterDigitValues
	"array instead of dictionary for speed"
	CharacterDigitValues := Array new: 255.
	#(#($0 $9 0) #($a $f 10) #($A $Z 10)) do: [:each |
		each first asciiValue
			to: each second asciiValue
			do: [:i |
				CharacterDigitValues
					at: i
					put: i - each first asciiValue + each last]].