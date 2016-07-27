parsing
parseToken
	^ [self tokenizer nextToken]
		on: XMLParserException
		do: [:error | self passParserException: error]