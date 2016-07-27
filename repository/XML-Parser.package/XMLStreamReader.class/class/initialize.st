initialization
initialize
	"XMLStreamReader initialize"

	SeparatorTable  := CharacterSet new.
	#(9 10 12 13 32) do: [:each | SeparatorTable add: each asCharacter].

	DigitTable := Array new: 256.
	DigitTable atAllPut: -1.
	($0 to: $9) do: [:each | DigitTable at: each asciiValue put: each digitValue].
	($a to: $f) do: [:each | DigitTable at: each asciiValue put: each digitValue].
	($A to: $F) do: [:each | DigitTable at: each asciiValue put: each digitValue].

	CarriageReturn := Character cr.
	LineFeed := Character lf.