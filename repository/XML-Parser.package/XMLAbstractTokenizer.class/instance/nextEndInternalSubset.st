tokenizing dtd
nextEndInternalSubset
	self expectTerminator: $].

	self hasActiveEntities
		ifTrue: [self parseError: 'Parameter entity replacement cannot terminate internal subset'].
	context enterProlog.
	self nextEndDocTypeDecl.