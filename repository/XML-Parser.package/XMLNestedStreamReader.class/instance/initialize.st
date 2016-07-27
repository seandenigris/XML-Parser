initialization
initialize
	stream := nil.
	nestedStreams := nil.
	hasNestedStreams := false.
	maxNestedStreams := 5.
	peekChar := nil.
	writeBuffer := WriteStream on: (String new: 128).
	currentLineNumber := 1.
	normalizedLineEndingChar := LineFeed.