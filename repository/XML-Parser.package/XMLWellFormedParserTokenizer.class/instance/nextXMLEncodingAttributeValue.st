tokenizing
nextXMLEncodingAttributeValue
	| quote nextChar |

	quote := self expectQuote.
	writeStream
		reset;
		nextPut: self expectLetter.
	[(nextChar := streamReader peek) == nil
		or: [(EncodingNameChars includes: nextChar) not]]
		whileFalse: [writeStream nextPut: streamReader next].
	self expectNext: quote.

	^ writeStream contents.