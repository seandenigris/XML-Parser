parsing
parseDocumentWhile: aBlock
	[[self tokenizer atEnd or: [aBlock value not]]
		whileFalse: [self tokenizer nextToken]]
		on: XMLParserException
		do: [:error | self passParserException: error]