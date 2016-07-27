printing
writeXMLWith: aWriter
	aWriter elementDeclaration
		name: self name;
		contentModel: self contentModel