parsing
parse: aStringOrStream
	^ (self on: aStringOrStream) parseDocument