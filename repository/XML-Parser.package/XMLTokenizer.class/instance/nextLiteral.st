tokenizing
nextLiteral
	| nextChar |

	((nextChar := streamReader peek) isLetter
		or: [nextChar == $_])
		ifFalse: [self errorExpected: 'name literal.'].

	^ streamWriter writeWith: [:writeStream |
		[LiteralChars includes: nextChar]
			whileTrue: [
				nextChar == $&
					ifTrue: [
						nextChar := streamReader next.
						writeStream nextPut: (streamReader peek == $#
							ifTrue: [self nextCharReference]
							ifFalse: [^ writeStream contents])]
					ifFalse: [writeStream nextPut: streamReader next].
				nextChar := streamReader peek].
		writeStream position > 0
			ifFalse: [self errorExpected: 'name literal'].
		writeStream contents]