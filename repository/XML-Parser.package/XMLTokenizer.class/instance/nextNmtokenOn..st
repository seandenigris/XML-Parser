tokenizing - dtd
nextNmtokenOn: aWriteStream
	"matches the nmtoken production"
	|  nextChar oldPosition |

	oldPosition := aWriteStream position.
	[(nextChar := streamReader peek) notNil
		and: [(NameStartChars includes: nextChar)
			or: [AdditionalNameChars includes: nextChar]]]
		whileTrue: [aWriteStream nextPut: streamReader next].

	(aWriteStream position > oldPosition)
		ifFalse: [self errorExpected: 'name token'].