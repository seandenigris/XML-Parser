positioning
pushBackStream: aStream onClose: aBlock
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