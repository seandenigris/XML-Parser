private
handleParserError: anError
	self tokenizer closeStreams.

	(anError isKindOf: XMLParserException)
		ifFalse: [anError pass].

	(anError hasLineNumber
		or: [self currentLineNumber isNil])
		ifFalse: [anError lineNumber: self currentLineNumber].
	(anError hasColumnNumber
		or: [self currentColumnNumber isNil])
		ifFalse: [anError columnNumber: self currentColumnNumber].

	anError shouldPassOnWhenCaught
		ifTrue: [anError pass].