tokenizing
nextNameOn: aWriteStream
	| nextChar |

	((nextChar := streamReader next) notNil
		and: [NameStartChars includes: nextChar])
		ifFalse: [self errorExpected: 'name'].
	aWriteStream nextPut: nextChar.

	[(nextChar := streamReader peek) notNil
		and: [(NameStartChars includes: nextChar)
			or: [AdditionalNameChars includes: nextChar]]]
		whileTrue: [aWriteStream nextPut: streamReader next].