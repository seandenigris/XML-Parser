streaming
popNestingLevel
	nestedStreams ifNotNil: [
		self stream close.
		self stream: self nestedStreams removeLast.
		self nestedStreams ifEmpty: [nestedStreams := nil]]