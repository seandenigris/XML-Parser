private
handleParserError: anError
	self tokenizer closeStreams.

	(anError isKindOf: XMLParserException)
		ifFalse: [anError pass].

	anError hasLineNumber
		ifFalse: [anError lineNumber: self currentLineNumber].
	anError hasColumnNumber
		ifFalse: [anError columnNumber: self currentColumnNumber].
	anError shouldPassOnWhenCaught
		ifTrue: [anError pass].