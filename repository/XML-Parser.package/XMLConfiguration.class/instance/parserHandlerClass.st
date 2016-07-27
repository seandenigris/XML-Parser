accessing
parserHandlerClass
	^ parserHandlerClass ifNil: [parserHandlerClass := SAXHandler]