initialization
setStream: anInitialStream readLimit: aReadLimit
	writeBuffer := WriteStream on: (String new: 128).
	currentLineNumber := 1.
	normalizedLineEndingChar := LineFeed.

	self
		setStream: anInitialStream
		onClose: nil.
	readLimit := aReadLimit.