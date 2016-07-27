printing
writeXMLWith: aWriter
	self version ifNotNil: [
		aWriter xml
			version: self version;
			encoding: self encoding].
	self doctypeDeclaration
		ifNotNil: [self doctypeDeclaration writeXMLWith: aWriter].
	
	self writeInnerXMLWith: aWriter.