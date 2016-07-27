parsing
parseToken
	^ [self tokenizer nextToken]
		on: XMLParserException
		do: [:error |
			error signal:
				error messageText,
				' (line ', self currentLineNumber printString, ')'].