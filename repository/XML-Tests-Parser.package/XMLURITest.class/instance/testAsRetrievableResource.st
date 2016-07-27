tests
testAsRetrievableResource
	(XMLFileHandle hasSupportedImplementation
		and: [XMLHTTPRequest hasSupportedImplementation])
		ifFalse: [^ self].

	self allURIStringsDo: [:each | | uri retrievableResource |
		uri := each asXMLURI.
		retrievableResource := uri asRetrievableResource.
		uri isLocalURI
			ifTrue: [
				self
					assert: (retrievableResource isKindOf: XMLFileHandle);
					assert: (retrievableResource path = uri path)]
			ifFalse: [
				self
					assert: (retrievableResource isKindOf: XMLHTTPRequest);
					assert: (retrievableResource url = uri printString)]]