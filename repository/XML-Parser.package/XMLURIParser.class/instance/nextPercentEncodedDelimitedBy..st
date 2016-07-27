private
nextPercentEncodedDelimitedBy: aCollection
	writeStream reset.
	[self atEnd
		or: [aCollection includes: self peek]]
		whileFalse: [
			self peek == $%
				ifTrue: [self nextPercentEncodedCharsOnWriteStream]
				ifFalse: [writeStream nextPut: self next]].
	^ writeStream contents.