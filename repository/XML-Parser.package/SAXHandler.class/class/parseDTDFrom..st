instance creation
parseDTDFrom: aStream
	| parser |

	parser := self on: aStream.
	parser driver startParsingMarkup.
	^ parser parseDocument.