printing
printXMLOn: aWriter
	self version ifNotNil: [
		aWriter xml
			version: self version;
			encoding: self encoding].
	self doctypeDeclaration
		ifNotNil: [self doctypeDeclaration printXMLOn: aWriter].
	
	super printXMLOn: aWriter