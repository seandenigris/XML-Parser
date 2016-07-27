tokenizing - dtd
nextEndDoctypeDeclaration
	streamReader skipSeparators.
	self expectTerminator: $>.
	context := context prologContext.

	driver handleEndDTD.