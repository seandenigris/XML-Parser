initialization
initialize
	stream := nil.
	nestedStreams := nil.
	hasNestedStreams := false.
	peekChar := nil.
	buffer := WriteStream on: (String new: 128).
	currentLineNumber := 1.
	normalizedLineEndingChar := LineFeed.