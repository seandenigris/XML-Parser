testing
isSkippableException: anError
	^ (XMLFileException, XMLHTTPException, XMLLimitException) handles: anError