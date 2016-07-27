streaming
popNestingLevel
	self hasNestedStreams
		ifTrue: [
			self stream close.
			self stream: self nestedStreams removeLast.
			self nestedStreams ifEmpty: [nestedStreams := nil]]