private
nextPercentEncodedDelimitedBy: aCollection
	writeStream reset.
	[self atEnd
		or: [aCollection includes: self peek]]
		whileFalse: [writeStream nextPut: self nextPercentEncodedChar].
	^ writeStream contents.