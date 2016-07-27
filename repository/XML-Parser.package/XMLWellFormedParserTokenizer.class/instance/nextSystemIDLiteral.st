tokenizing - dtd
nextSystemIDLiteral
	| quote nextChar |
	
	quote := self expectQuote.
	writeStream reset.
	[(nextChar := streamReader peek) == nil
		or: [nextChar == quote]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInSystemID: nextChar].
			writeStream nextPut: streamReader next].
	self expectNext: quote.

	^ writeStream contents.