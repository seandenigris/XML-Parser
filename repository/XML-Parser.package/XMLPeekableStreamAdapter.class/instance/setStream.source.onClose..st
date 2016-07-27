initialization
setStream: aStream source: aSource onClose: aBlock
	stream := aStream.
	peekChar := nil.
	source := aSource.
	onClose := aBlock.