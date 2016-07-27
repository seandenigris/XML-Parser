tokenizing
nextName
	| nextChar |

	^ streamWriter writeWith: [:writeStream |
		(NameStartChars includes: (nextChar := streamReader next))
			ifFalse: [self errorExpected: 'name'].
		writeStream nextPut: nextChar.

		[streamReader atEnd not
			and: [(NameStartChars includes: (nextChar := streamReader peek))
				or: [AdditionalNameChars includes: nextChar]]]
			whileTrue: [writeStream nextPut: streamReader next].
		writeStream stringContents]