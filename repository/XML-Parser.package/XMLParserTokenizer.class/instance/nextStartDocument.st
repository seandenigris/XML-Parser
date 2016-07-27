tokenizing
nextStartDocument
	context := driver initialContext ifNil: [XMLPrologContext new].
	context isPrologContext
		ifTrue: [streamReader detectCurrentEncoding].
	driver handleStartDocument.