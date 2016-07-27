instance creation
onURL: aURLString upToLimit: aLimit
	"Fetches URL and returns new parser on the response up to
	the input limit (use nil to disable) but doesn't parse"

	^ (self
		on:
			(XMLDecodingReadStreamAdapter onExternalStream:
				(aURLString asXMLURI streamGetUpToLimit: aLimit))
		documentURI: aURLString) documentReadLimit: aLimit