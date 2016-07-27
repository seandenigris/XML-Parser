tokenizing
nextName
	| nextChar |

	^ streamWriter writeWith: [:writeStream |
		((nextChar := streamReader next) notNil
			and: [NameStartChars includes: nextChar])
			ifFalse: [self errorExpected: 'name'].
		writeStream nextPut: nextChar.

		[(nextChar := streamReader peek) notNil
			and: [(NameStartChars includes: nextChar)
				or: [AdditionalNameChars includes: nextChar]]]
			whileTrue: [writeStream nextPut: streamReader next].
		writeStream contents]