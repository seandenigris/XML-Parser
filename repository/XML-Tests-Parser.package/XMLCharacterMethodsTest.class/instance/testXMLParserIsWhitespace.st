tests
testXMLParserIsWhitespace
	| whitespace |

	whitespace := Character xmlParserWhitespace.
	0 to: 255 do: [:each | | char |
		char := each asCharacter.
		(whitespace includes: char)
			ifTrue: [self assert: char xmlParserIsWhitespace]
			ifFalse: [self deny: char xmlParserIsWhitespace]].
	self
		assert: (nil respondsTo: #xmlParserIsWhitespace);
		deny: nil xmlParserIsWhitespace.