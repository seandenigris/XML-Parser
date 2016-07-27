tokenizing
nextLiteral
	| nextChar |

	((nextChar := streamReader peek) isLetter
		or: [nextChar == $_])
		ifFalse: [self errorExpected: 'name literal.'].

	buffer reset.
	[LiteralChars includes: nextChar]
		whileTrue: [
			nextChar == $&
				ifTrue: [
					nextChar := streamReader next.
					buffer nextPut: (streamReader peek == $#
						ifTrue: [self nextCharReference]
						ifFalse: [^ buffer stringContents])]
				ifFalse: [buffer nextPut: streamReader next].
			nextChar := streamReader peek].
	buffer position isZero
		ifTrue: [self errorExpected: 'name literal'].
	^ buffer stringContents.