initialization
setStream: anInitialStream readLimit: aReadLimit
	currentLineNumber := 1.
	normalizedLineEndingChar := LineFeed.
	stream := anInitialStream.
	readLimit := aReadLimit.