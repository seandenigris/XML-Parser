tokenizing - dtd
nextNameOnWriteStream
	| nextChar |

	((nextChar := streamReader next) notNil
		and: [(NameChars includes: nextChar)
			and: [(NonNameStartCharNameChars includes: nextChar) not]])
		ifFalse: [self errorExpectedName].
	writeStream nextPut: nextChar.

	[(nextChar := streamReader peek) notNil
		and: [NameChars includes: nextChar]]
		whileTrue: [writeStream nextPut: streamReader next].