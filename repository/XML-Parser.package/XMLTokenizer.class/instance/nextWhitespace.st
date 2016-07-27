tokenizing
nextWhitespace
	| nextChar resultStream resultString|
	resultStream := (String new: 10) writeStream.
	[((nextChar := self peek) ~~ nil)
		and: [SeparatorTable includes: nextChar]]
		whileTrue: [resultStream nextPut: nextChar. self next].
	(nestedStreams == nil or: [self atEnd not])
		ifFalse: [self checkNestedStream.
				self nextWhitespace].
	resultString := resultStream contents.
	resultString isEmpty ifFalse: [self handleWhitespace: resultString].
	^resultString