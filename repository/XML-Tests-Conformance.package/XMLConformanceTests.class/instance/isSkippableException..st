testing
isSkippableException: anError
	^ (XMLFileIOException, XMLHTTPException, XMLLimitException) handles: anError