streaming
skipSeparators
	| nextChar |
	[((nextChar := self peek) ~~ nil)
		and: [SeparatorTable includes: nextChar]]
		whileTrue: [self next].
	(nestedStreams == nil or: [self atEnd not])
		ifFalse: [
			self checkNestedStream.
			self skipSeparators].