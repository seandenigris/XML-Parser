tokenizing
nextName
	| nextChar |

	nameStream reset.
	"inlined from nextNameOn:"
	((nextChar := streamReader next) notNil
		and: [(NameChars includes: nextChar)
			and: [(AdditionalNameChars includes: nextChar) not]])
		ifFalse: [self errorExpected: 'name'].
	nameStream nextPut: nextChar.

	[(nextChar := streamReader peek) notNil
		and: [NameChars includes: nextChar]]
		whileTrue: [nameStream nextPut: streamReader next].
	^ nameStream contents.