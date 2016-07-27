instance creation
onURL: aUrlString upToLimit: aLimit
	"Fetches the URL and returns a new instance on the response up
	to the input limit (use nil to disable)."

	^ (self
		on: (aUrlString asXMLURI getUpToLimit: aLimit)
		documentURI: aUrlString)
		documentReadLimit: aLimit