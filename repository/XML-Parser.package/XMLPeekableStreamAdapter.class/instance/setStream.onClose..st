initialization
setStream: aStream onClose: aBlock
	stream := aStream.
	peekChar := nil.
	onClose := aBlock.