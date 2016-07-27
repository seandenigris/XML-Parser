parsing
parserForSpecialCharacter: aCharacter
	| i |

	^ ((i := aCharacter asciiValue) > 0
		and: [i <= SpecialCharacterParsers size])
			ifTrue: [SpecialCharacterParsers at: i]
			ifFalse: [nil]