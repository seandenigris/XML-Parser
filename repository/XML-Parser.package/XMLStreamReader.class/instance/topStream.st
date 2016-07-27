streaming
topStream
	^ nestedStreams
		ifNil: [self stream]
		ifNotNil: [self nestedStreams first]