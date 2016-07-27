accessing
upToEnd
	writeBuffer reset.
	[self atEnd] whileFalse: [writeBuffer nextPut: self next].
	^ writeBuffer contents.