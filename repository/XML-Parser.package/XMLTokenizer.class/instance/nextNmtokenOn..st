tokenizing - dtd
nextNmtokenOn: aWriteStream
	"matches the nmtoken production"
	| nextChar |

	((nextChar := streamReader peek) notNil
		and: [(NameChars includes: nextChar)])
		ifFalse: [self errorExpected: 'name token'].
	aWriteStream nextPut: streamReader next.
		
	[(nextChar := streamReader peek) notNil
		and: [NameChars includes: nextChar]]
		whileTrue: [aWriteStream nextPut: streamReader next].