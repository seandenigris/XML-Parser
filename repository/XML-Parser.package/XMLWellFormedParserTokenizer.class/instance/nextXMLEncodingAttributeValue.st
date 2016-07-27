tokenizing
nextXMLEncodingAttributeValue
	| quote |

	quote := self expectQuote.

	writeStream
		reset;
		nextPut: self expectLetter.
	[streamReader atEnd not
		and: [EncodingNameChars includes: streamReader peek]]
		whileTrue: [writeStream nextPut: streamReader next].

	self expectNext: quote.
	^ writeStream contents.