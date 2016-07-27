instance creation
onURL: aURLString upToLimit: aLimit
	"Fetches the URL and returns a new instance on the response up
	to the input limit (use nil to disable)."

	^ (self
		on: (aURLString asXMLURI getUpToLimit: aLimit)
		documentURI: aURLString)
		documentReadLimit: aLimit