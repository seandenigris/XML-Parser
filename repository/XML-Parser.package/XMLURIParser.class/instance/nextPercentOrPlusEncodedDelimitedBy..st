private
nextPercentOrPlusEncodedDelimitedBy: aCollection
	writeStream reset.
	[self atEnd
		or: [aCollection includes: self peek]]
		whileFalse: [writeStream nextPut: self nextPercentOrPlusEncodedChar].
	^ writeStream contents.