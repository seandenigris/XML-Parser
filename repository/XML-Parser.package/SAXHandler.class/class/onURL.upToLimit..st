instance creation
onURL: aURLString upToLimit: aLimit
	"Fetches URL and returns new parser on the response up to
	the input limit (use nil to disable) but doesn't parse"

	^ (self
		on:
			(XMLDecodingReadStreamAdapter on:
				(aURLString asXMLURI
					streamGetUpToLimit: aLimit
					"disable decoding so we can do our own looking at byte order
					marks and <?xml ...?> encoding attributes"
					decoding: false))
		documentURI: aURLString) documentReadLimit: aLimit