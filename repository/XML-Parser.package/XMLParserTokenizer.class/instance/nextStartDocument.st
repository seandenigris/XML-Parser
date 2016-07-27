tokenizing
nextStartDocument
	context setContext: (driver initialContext ifNil: [#inProlog]).
	driver handleStartDocument.