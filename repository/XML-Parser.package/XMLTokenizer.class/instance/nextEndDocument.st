tokenizing
nextEndDocument
	context isInInternalSubset
		ifTrue: [self errorExpected: 'end of internal subset'].
	super nextEndDocument.