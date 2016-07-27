private
nextPercentEncodedUpToEnd
	writeStream reset.
	[self atEnd]
		whileFalse: [writeStream nextPut: self nextPercentEncodedChar].
	^ writeStream contents.