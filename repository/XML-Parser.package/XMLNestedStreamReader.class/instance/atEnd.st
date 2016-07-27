testing
atEnd
	^ peekChar isNil and: [hasNestedStreams not and: [stream atEnd]]