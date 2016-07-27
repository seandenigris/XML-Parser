tokenizing
nextStartDocument
	context := driver initialContext ifNil: [XMLXMLDeclarationContext new].
	context isPrologContext
		ifTrue: [streamReader detectCurrentEncoding].
	driver handleStartDocument.