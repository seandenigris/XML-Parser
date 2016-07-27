parsing
parseToken
	^ [self tokenizer nextToken]
		on: XMLParserException
		do: [:error |
			error
				appendLineNumber: self currentLineNumber;
				pass].