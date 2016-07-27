class initialization
initialize
	"XMLTokenizer initialize"

	CharEscapes := CharacterSet newFrom: #( $& $" $' $> $< ).

	SeparatorTable  := CharacterSet new.
	#(9 10 12 13 32) do: [:each | SeparatorTable add: each asCharacter].

	LiteralChars := CharacterSet newFrom: #( $: $- $: $= $.).
	0 to: 255 do: [:i | 
		| char |
		char := i asCharacter.
		(char isDigit or: [char isLetter])
		ifTrue: [LiteralChars add: char]].

	NameDelimiters := CharacterSet new.
	#(9 10 12 13 32 61 "$= asInteger 61" 62 "$> asInteger" 47 "$/ asInteger")
		do: [:each | NameDelimiters add: each asCharacter].

	DigitTable := Array new: 256.
	DigitTable atAllPut: -1.
	($0 to: $9) do: [:each | DigitTable at: each asciiValue put: each digitValue].
	($a to: $f) do: [:each | DigitTable at: each asciiValue put: each digitValue].
	($A to: $F) do: [:each | DigitTable at: each asciiValue put: each digitValue].
