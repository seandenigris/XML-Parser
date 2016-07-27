testing
atEnd
	^ peekChar isNil
		and: [stream atEnd
			and: [self hasNestedStreams not]]