converting
asRetrievableResource
	^ self isLocalURI
		ifTrue: [XMLFileHandle path: self path]
		ifFalse: [XMLHTTPRequest url: self asString]