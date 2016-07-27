tokenizing dtd
nextEndInternalSubset
	self hasActiveEntities
		ifTrue: [self parseError: 'Parameter entity replacement cannot terminate internal subset'].

	super nextEndInternalSubset.