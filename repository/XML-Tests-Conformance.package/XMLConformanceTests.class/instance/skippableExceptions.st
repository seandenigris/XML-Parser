accessing
skippableExceptions
	^ skippableExceptions
		ifNil: [skippableExceptions := XMLFileException, XMLHTTPException, XMLLimitException]