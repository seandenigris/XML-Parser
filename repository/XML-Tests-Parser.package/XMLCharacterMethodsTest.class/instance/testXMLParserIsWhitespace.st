tests
testXMLParserIsWhitespace
	| whitespace |

	whitespace := #(
			32 "Character space asciiValue"
			9 "Character tab asciiValue"
			13 "Character cr asciiValue"
			10 "Character lf asciiValue"
			12 "Character newPage asciiValue"
		) asSet.
	0 to: 255 do: [:each |
		(whitespace includes: each)
			ifTrue: [self assert: each asCharacter xmlParserIsWhitespace]
			ifFalse: [self deny: each asCharacter xmlParserIsWhitespace]].