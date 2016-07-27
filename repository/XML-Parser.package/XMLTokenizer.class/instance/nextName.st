tokenizing
nextName
	| nextChar |

	^ streamWriter writeWith: [:writeStream |
		[(nextChar := streamReader peek) isNil
			or: [NameDelimiters includes: nextChar]]
				whileFalse: [writeStream nextPut: streamReader next].
		(writeStream position isZero)
			ifTrue: [self errorExpected: 'name'].
		writeStream stringContents]