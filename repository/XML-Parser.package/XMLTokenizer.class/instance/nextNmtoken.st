tokenizing - dtd
nextNmtoken
	"matches the nmtoken production"
	|  nextChar |

	^ streamWriter writeWith: [:writeStream |
		[(nextChar := streamReader peek) notNil
			and: [(NameStartChars includes: nextChar)
				or: [AdditionalNameChars includes: nextChar]]]
			whileTrue: [writeStream nextPut: streamReader next].

		(writeStream position > 0)
			ifFalse: [self errorExpected: 'name token'].

		writeStream contents]