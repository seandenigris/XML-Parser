initialization
initialize
	stream := nil.
	nestedStreams := nil.
	peekChar := nil.
	buffer := WriteStream on: (String new: 128).