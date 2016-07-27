initialization
initialize
	"self initialize"

	SeparatorCharacters := CharacterSet newFrom: Character separators.

	CarriageReturn := Character cr.
	LineFeed := Character lf.

	HexDigitCharacterMap :=
		Dictionary newFrom:
			(($0 to: $9), ($a to: $f), ($A to: $F)
				collect: [:each | each -> each asUppercase digitValue]).