parsing
parseDocument
	[[self tokenizer atEnd]
		whileFalse: [self tokenizer nextToken]]
		on: XMLParserException
		do: [:error | self passParserException: error]