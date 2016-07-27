instance creation
onURL: aUrlString
	^ self
		on: (XMLHTTPRequest defaultImplementation url: aUrlString) get
		documentURI: aUrlString