tokenizing - dtd
nextEndDocTypeDecl
	streamReader skipSeparators.
	self expectTerminator: $>.
	context enterProlog.

	driver handleEndDTD.