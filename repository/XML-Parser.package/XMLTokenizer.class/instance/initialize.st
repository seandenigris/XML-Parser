initialize
initialize
	streamReader := XMLStreamReader new.
	parsingMarkup := false.
	isValidating := false.
	attributeBuffer := WriteStream on: (String new: 128).
	nameBuffer := WriteStream on: (String new: 128)