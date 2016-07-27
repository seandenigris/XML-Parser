tokenizing
nextStartDocument
	((context := driver newInitialContext) supportsEncodingDetection
		and: [driver decodesCharacters])
		ifTrue: [streamReader detectCurrentEncoding].
	driver handleStartDocument.