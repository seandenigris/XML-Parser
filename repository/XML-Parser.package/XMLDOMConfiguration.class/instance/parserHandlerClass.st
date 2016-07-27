accessing
parserHandlerClass
	^ parserHandlerClass ifNil: [parserHandlerClass := XMLDOMParser]