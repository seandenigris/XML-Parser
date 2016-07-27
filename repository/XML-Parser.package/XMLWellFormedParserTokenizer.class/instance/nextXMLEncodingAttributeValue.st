tokenizing
nextXMLEncodingAttributeValue
	| quote nextChar |

	quote := self expectQuote.
	((nextChar := streamReader next) notNil
		and: [EncodingNameStartChars includes: nextChar])
		ifFalse: [self errorExpectedEncodingName].
	writeStream
		reset;
		nextPut: nextChar.

	[(nextChar := streamReader peek) == nil
		or: [(EncodingNameChars includes: nextChar) not]]
		whileFalse: [writeStream nextPut: streamReader next].
	self expectNext: quote.

	^ writeStream contents.