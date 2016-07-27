private
handleParserError: anError
	self tokenizer closeStreams.

	(anError isKindOf: XMLParserException)
		ifTrue: [
			anError appendLineNumber: self currentLineNumber.
			anError shouldPassOnWhenCaught
				ifTrue: [anError pass]]
		ifFalse: [anError pass].