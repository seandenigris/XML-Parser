testing
atEnd
	^ peekChar == nil
		and: [stream atEnd
			and: [self hasNestedStreams not
				or: [nestedStreams allSatisfy: [:each | each key atEnd]]]]