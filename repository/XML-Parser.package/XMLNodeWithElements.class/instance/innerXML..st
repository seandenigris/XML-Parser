parsing
innerXML: aStringOrStream
	self
		innerXML: aStringOrStream
		parsedWith: (self parserHandlerClass on: aStringOrStream)