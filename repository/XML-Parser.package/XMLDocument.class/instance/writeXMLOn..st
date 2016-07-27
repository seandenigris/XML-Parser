printing
writeXMLOn: aWriter
	self version
		ifNotNil: [
			aWriter xml
				version: self version;
				encoding: self encoding;
				standalone: self isStandalone].
	self doctypeDeclaration
		ifNotNil: [self doctypeDeclaration writeXMLOn: aWriter].
	
	self writeInnerXMLOn: aWriter.