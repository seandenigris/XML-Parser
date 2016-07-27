tokenizing - dtd
nextNmtokenOnWriteStream
	"matches the nmtoken production"
	| nextChar |

	((nextChar := streamReader peek) notNil
		and: [(NameChars includes: nextChar)])
		ifFalse: [self errorExpected: 'name token'].
	writeStream nextPut: streamReader next.
		
	[(nextChar := streamReader peek) notNil
		and: [NameChars includes: nextChar]]
		whileTrue: [writeStream nextPut: streamReader next].