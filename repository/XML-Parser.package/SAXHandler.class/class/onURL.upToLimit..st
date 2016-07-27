instance creation
onURL: aUrlString upToLimit: aLimit
	^ (self
		on: ((XMLHTTPRequest url: aUrlString) getUpToLimit: aLimit)
		documentURI: aUrlString)
		documentReadLimit: aLimit