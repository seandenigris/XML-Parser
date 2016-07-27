tests
testXMLParserIsSeparator
	| separators |

	separators := Character xmlParserSeparators.
	0 to: 255 do: [:each | | char |
		char := each asCharacter.
		(separators includes: char)
			ifTrue: [self assert: char xmlParserIsSeparator]
			ifFalse: [self deny: char xmlParserIsSeparator]].