initialize
initialize
	parsingMarkup := false.
	validating := false.
	attributeBuffer := WriteStream on: (String new: 128).
	nameBuffer := WriteStream on: (String new: 128)