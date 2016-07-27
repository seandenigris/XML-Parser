class initialization
initialize
	"self initialize"

	super initialize.
	HexDigitCharacterMap := Dictionary new.
	($0 to: $9) do: [:each |
		HexDigitCharacterMap
			at: each
			put: each asciiValue - $0 asciiValue].
	($a to: $f) do: [:each |
		HexDigitCharacterMap
			at: each
			put: each asciiValue - $a asciiValue + 10.
		HexDigitCharacterMap
			at: each asUppercase
			put: (HexDigitCharacterMap at:each)].