streaming
checkNestedStream
	nestedStreams ifNotNil: [
		(peekChar isNil and: [stream atEnd])
			ifTrue: [
				self popNestingLevel.
				self checkNestedStream]]