printing
writeXMLOn: aWriter
	self version ifNotNil: [
		aWriter xml
			version: self version;
			encoding: self encoding].
	self doctypeDeclaration
		ifNotNil: [self doctypeDeclaration writeXMLOn: aWriter].
	
	self writeInnerXMLWith: aWriter.