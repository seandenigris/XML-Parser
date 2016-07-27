testing
atEnd
	^ peekChar isNil
		and: [stream atEnd
			and: [self hasNestedStreams not
				or: [nestedStreams allSatisfy: [:each | each atEnd]]]]