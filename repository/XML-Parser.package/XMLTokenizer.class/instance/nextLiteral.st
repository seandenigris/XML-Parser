tokenizing
nextLiteral
	| resultStream nextChar resultString |
	resultStream := (String new: 10) writeStream.
	((nextChar := streamReader peek) isLetter
		or: [nextChar == $_])
		ifFalse: [self errorExpected: 'Name literal.'].
	[nextChar := streamReader peek.
	(LiteralChars includes: nextChar)
		ifTrue: [
			nextChar == $&
				ifTrue: [
					nextChar := streamReader next.
					resultStream nextPut: (streamReader peek == $#
						ifTrue: [self nextCharReference]
						ifFalse: [^ resultStream contents])]
				ifFalse: [
					resultStream nextPut: streamReader next]]
		ifFalse: [resultString := resultStream contents.
			resultString isEmpty
				ifTrue: [self errorExpected: 'Name literal']
				ifFalse: [^ resultString]]] repeat