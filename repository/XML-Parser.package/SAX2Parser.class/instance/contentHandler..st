accessing
contentHandler: aContentHandler
	contentHandler :=
		aContentHandler ifNil: [self defaultContentHandlerClass new]