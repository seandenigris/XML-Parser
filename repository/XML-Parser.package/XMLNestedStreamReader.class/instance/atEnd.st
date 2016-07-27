testing
atEnd
	^ peekChar isNil and: [stream atEnd and: [nestedStreams isNil]]