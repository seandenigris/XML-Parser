tokenizing - dtd
nextNmtokenOnWriteStream
	"matches the Nmtoken production"
	| nextChar |

	((nextChar := streamReader peek) notNil
		and: [(NameChars includes: nextChar)])
		ifFalse: [self errorExpectedNmtoken].
	writeStream nextPut: streamReader next.
		
	[(nextChar := streamReader peek) notNil
		and: [NameChars includes: nextChar]]
		whileTrue: [writeStream nextPut: streamReader next].