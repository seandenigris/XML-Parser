private
nextPercentEncodedUpToEnd
	writeStream reset.
	[self atEnd]
		whileFalse: [
			self peek == $%
				ifTrue: [self nextPercentEncodedCharsOnWriteStream]
				ifFalse: [writeStream nextPut: self next]].
	^ writeStream contents.