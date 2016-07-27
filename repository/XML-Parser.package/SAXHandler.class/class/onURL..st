instance creation
onURL: aUrlString
	^ self
		on: (XMLHTTPRequest url: aUrlString) get
		documentURI: aUrlString