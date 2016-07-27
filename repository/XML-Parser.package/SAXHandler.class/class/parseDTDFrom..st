instance creation
parseDTDFrom: aStream
	| driver parser |
	driver := SAXDriver on: aStream.
	driver validating: true.
	driver startParsingMarkup.
	parser := self new driver: driver.
	^ parser parseDocument.