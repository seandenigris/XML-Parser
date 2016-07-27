initialization
setStream: anInitialStream readLimit: aReadLimit
	writeBuffer := WriteStream on: (String new: 64).
	currentLineNumber := 1.
	normalizedLineEndingChar := LineFeed.
	stream := anInitialStream.
	readLimit := aReadLimit.
	isEscapingQuotes := false.