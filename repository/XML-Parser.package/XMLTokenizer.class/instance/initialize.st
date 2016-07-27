initialize
initialize
	streamReader := XMLStreamReader new.
	buffer := WriteStream on: (String new: 256).
	parsingMarkup := false.
	isValidating := false.