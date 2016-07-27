private
nextPercentOrPlusEncodedDelimitedBy: aCollection
	writeStream reset.
	[self atEnd
		or: [aCollection includes: self peek]]
		whileFalse: [
			self peek == $%
				ifTrue: [self nextPercentEncodedCharsOnWriteStream]
				ifFalse: [| nextChar |
					(nextChar := self next) == $+
						ifTrue: [writeStream nextPut: Character space]
						ifFalse: [writeStream nextPut: nextChar]]].
	^ writeStream contents.