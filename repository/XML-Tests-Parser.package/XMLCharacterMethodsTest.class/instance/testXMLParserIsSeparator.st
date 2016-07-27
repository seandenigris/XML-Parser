tests
testXMLParserIsSeparator
	| separators |

	separators := #(
			32 "Character space asciiValue"
			9 "Character tab asciiValue"
			13 "Character cr asciiValue"
			10 "Character lf asciiValue"
		) asSet.
	0 to: 255 do: [:each |
		(separators includes: each)
			ifTrue: [self assert: each asCharacter xmlParserIsSeparator]
			ifFalse: [self deny: each asCharacter xmlParserIsSeparator]].