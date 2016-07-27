positioning
pushBackStream: aStream onClose: aBlock
	(nestedStreams size >= self maxNestedStreams)
		ifTrue: [self errorNestingLimitExceeded].

	self
		pushNestedStream: stream
		onClose: onClose.
	peekChar
		ifNotNil: [
			self
				pushNestedStream: (XMLSingleCharacterReadStream on: peekChar)
				onClose: nil.
			peekChar := nil].

	self stream: aStream.
	onClose := aBlock.