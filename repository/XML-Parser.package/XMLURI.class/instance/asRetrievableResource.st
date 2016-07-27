converting
asRetrievableResource
	^ self isLocalURI
		ifTrue: [XMLFileHandle defaultImplementation path: self path]
		ifFalse: [XMLHTTPRequest defaultImplementation url: self asString]