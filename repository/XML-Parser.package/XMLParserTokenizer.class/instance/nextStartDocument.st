tokenizing
nextStartDocument
	context := driver initialContext ifNil: [XMLXMLDeclarationContext new].
	context supportsEncodingDetection
		ifTrue: [streamReader detectCurrentEncoding].
	driver handleStartDocument.