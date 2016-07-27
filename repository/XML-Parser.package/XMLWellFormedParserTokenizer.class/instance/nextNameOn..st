tokenizing
nextNameOn: aWriteStream
	| nextChar |

	((nextChar := streamReader next) notNil
		and: [(NameChars includes: nextChar)
			and: [(AdditionalNameChars includes: nextChar) not]])
		ifFalse: [self errorExpectedName].
	aWriteStream nextPut: nextChar.

	[(nextChar := streamReader peek) notNil
		and: [NameChars includes: nextChar]]
		whileTrue: [aWriteStream nextPut: streamReader next].