instance creation
onURL: aUrlString
	"Fetches the URL and returns a new instance on the response"

	^ self
		onURL: aUrlString
		upToLimit: XMLParserLimits defaultDocumentReadLimit