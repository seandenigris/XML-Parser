tokenizing
nextXMLVersionAttributeValue
	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedXMLVersionValueStartButGot: quote].

	writeStream
		reset;
		nextPut: self expectVersionDigit;
		nextPut: (self expectNext: $.);
		nextPut: self expectVersionDigit.

	[(nextChar := streamReader next) == nil
		or: [(VersionDigitChars includes: nextChar) not]]
		whileFalse: [writeStream nextPut: nextChar].

	nextChar == quote
		ifFalse: [
			self
				errorExpectedXMLVersionValueEnd: quote
				butGot: nextChar].

	^ writeStream contents.