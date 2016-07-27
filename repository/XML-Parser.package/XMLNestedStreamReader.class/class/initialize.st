initialization
initialize
	"self initialize"

	SeparatorCharacters := CharacterSet newFrom: Character separators.

	CarriageReturn := Character cr.
	LineFeed := Character lf.

	HexDigitCharacterMap := Dictionary new.
	($0 to: $9) do: [:each | HexDigitCharacterMap at: each put: each asciiValue - $0 asciiValue].
	($a to: $f) do: [:each | | digitValue |
		digitValue := each asciiValue - $a asciiValue + 10.
		HexDigitCharacterMap
			at: each put: digitValue;
			at: each asUppercase put: digitValue].