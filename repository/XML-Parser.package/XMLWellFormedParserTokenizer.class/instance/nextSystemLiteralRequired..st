tokenizing - dtd
nextSystemLiteralRequired: aBoolean	
	| quote nextChar |

	(aBoolean or: [streamReader atQuote])
		ifFalse: [^ ''].
	
	quote := self expectQuote.
	writeStream reset.
	[(nextChar := streamReader peek) == nil
		or: [nextChar == quote]]
		whileFalse: [writeStream nextPut: streamReader next].
	self expectNext: quote.

	^ writeStream contents.