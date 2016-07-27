initialization
initialize
	super initialize.

	nestedStreams := nil.
	peekChar := nil.
	writeBuffer := WriteStream on: (String new: 128).
	currentLineNumber := 1.
	normalizedLineEndingChar := LineFeed.