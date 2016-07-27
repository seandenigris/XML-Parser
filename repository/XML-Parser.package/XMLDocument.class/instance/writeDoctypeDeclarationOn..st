printing
writeDoctypeDeclarationOn: aWriter
	self doctypeDeclaration
		ifNotNil: [self doctypeDeclaration writeXMLOn: aWriter]