initialization
initialize
	super initialize.

	stream := nil.
	nestedStreams := nil.
	hasNestedStreams := false.
	peekChar := nil.
	writeBuffer := WriteStream on: (String new: 128).
	currentLineNumber := 1.
	normalizedLineEndingChar := LineFeed.