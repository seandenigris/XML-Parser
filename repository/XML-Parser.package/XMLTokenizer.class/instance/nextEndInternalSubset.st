tokenizing dtd
nextEndInternalSubset
	self expectTerminator: $].
	context enterProlog.
	self nextEndDocTypeDecl.