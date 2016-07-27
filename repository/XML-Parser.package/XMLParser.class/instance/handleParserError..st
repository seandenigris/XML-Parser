private
handleParserError: anError
	self tokenizer closeStreams.

	(anError respondsTo: #appendLineNumber:)
		ifTrue: [anError appendLineNumber: self currentLineNumber].
	anError pass.