instance creation
onURL: aUrlString
	^ self
		on: (XMLHTTPClient defaultImplementation get: aUrlString)
		documentURI: aUrlString