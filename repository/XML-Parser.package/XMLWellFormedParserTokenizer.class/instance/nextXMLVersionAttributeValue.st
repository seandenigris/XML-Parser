tokenizing
nextXMLVersionAttributeValue
	| quote |

	quote := self expectQuote.

	writeStream
		reset;
		nextPut: self expectVersionDigit;
		nextPut: (self expectNext: $.);
		nextPut: self expectVersionDigit.

	[streamReader atEnd
		or: [streamReader peek == quote]]
		whileFalse: [writeStream nextPut: self expectVersionDigit].

	self expectNext: quote.
	^ writeStream contents.