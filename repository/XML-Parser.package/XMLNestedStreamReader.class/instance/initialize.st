initialization
initialize
	stream := nil.
	nestedStreams := nil.
	hasNestedStreams := false.
	peekChar := nil.
	basicNextChar := nil.
	writeBuffer := WriteStream on: (String new: 128).
	currentLineNumber := 1.
	normalizedLineEndingChar := LineFeed.