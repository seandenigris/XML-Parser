tokenizing
nextXMLVersionAttributeValue
	| quote |

	^ streamWriter writeWith: [:writeStream |
		quote := self expectQuote.

		writeStream
			nextPut: (self expectNext: $1);
			nextPut: (self expectNext: $.);
			nextPut: self expectDigit.

		[streamReader atEnd
			or: [streamReader peek == quote]]
			whileFalse: [writeStream nextPut: self expectDigit].

		self expectNext: quote.
		writeStream contents]