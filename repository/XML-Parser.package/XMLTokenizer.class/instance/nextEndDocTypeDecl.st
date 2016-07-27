tokenizing dtd
nextEndDocTypeDecl
	streamReader skipSeparators.
	self expectNext: $>.
	driver handleEndDTD.