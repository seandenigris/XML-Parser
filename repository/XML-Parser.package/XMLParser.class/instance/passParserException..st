private
passParserException: anError
	self tokenizer streamReader close.
	anError
		appendLineNumber: self currentLineNumber;
		pass.