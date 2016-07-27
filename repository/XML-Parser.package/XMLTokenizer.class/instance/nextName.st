tokenizing
nextName
	| nextChar |

	buffer reset.
	[(nextChar := streamReader peek) isNil
		or: [NameDelimiters includes: nextChar]]
			whileFalse: [buffer nextPut: streamReader next].
	(buffer position isZero)
		ifTrue: [self errorExpected: 'name'].
	^ buffer stringContents.