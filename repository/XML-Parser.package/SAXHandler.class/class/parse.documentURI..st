parsing
parse: aStringOrStream documentURI: aURIString
	"Parse document in argument string or stream with associated base URI"

	^ (self
		on: aStringOrStream
		documentURI: aURIString) parseDocument