tokenizing
nextName
	| nextChar |

	nameStream reset.
	((nextChar := streamReader next) notNil
		and: [(NameChars includes: nextChar)
			and: [(NonNameStartCharNameChars includes: nextChar) not]])
		ifFalse: [self errorExpectedName].
	nameStream nextPut: nextChar.

	[(nextChar := streamReader peek) notNil
		and: [NameChars includes: nextChar]]
		whileTrue: [nameStream nextPut: streamReader next].
	^ nameStream contents.