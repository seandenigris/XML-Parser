tokenizing dtd
nextDocType
	self expectLiteral: 'DOCTYPE'.
	self startParsingMarkup.
	^ self nextDocTypeDecl.