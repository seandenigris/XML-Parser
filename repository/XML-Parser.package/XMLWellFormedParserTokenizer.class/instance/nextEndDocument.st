tokenizing
nextEndDocument
	context isInternalSubsetContext
		ifTrue: [self errorExpected: 'end of internal subset'].
	super nextEndDocument.