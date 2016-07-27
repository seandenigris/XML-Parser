parsing
parseDocument
	[[self tokenizer atEnd]
		whileFalse: [self tokenizer nextToken]]
		on: XMLParserException
		do: [:error |
			error
				appendLineNumber: self currentLineNumber;
				pass].