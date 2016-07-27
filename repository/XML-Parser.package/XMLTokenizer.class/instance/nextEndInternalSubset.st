tokenizing dtd
nextEndInternalSubset
	self expectNext: $].
	context enterProlog.
	self nextEndDocTypeDecl.