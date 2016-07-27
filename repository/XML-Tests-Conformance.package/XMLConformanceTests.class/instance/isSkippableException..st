testing
isSkippableException: anError
	^ (XMLFileIOException, XMLHTTPException, XMLEntityDepthException) handles: anError