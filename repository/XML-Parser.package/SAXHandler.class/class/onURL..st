instance creation
onURL: aURLString
	"Fetches the URL and returns a new instance on the response"

	^ self
		onURL: aURLString
		upToLimit: XMLParserLimits defaultDocumentReadLimit