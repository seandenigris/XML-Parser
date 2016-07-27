parsing
parseToken
	^ [self tokenizer nextToken]
		on: XMLParserException
		do: [:error |
			error
				messageText: error messageText, ' (line ', self currentLineNumber printString, ')';
				pass].