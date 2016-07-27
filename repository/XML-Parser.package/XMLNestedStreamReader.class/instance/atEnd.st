testing
atEnd
	^ peekChar isNil
		and: [basicNextChar isNil
			and: [hasNestedStreams not and: [stream atEnd]]]