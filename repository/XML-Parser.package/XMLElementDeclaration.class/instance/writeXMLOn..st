printing
writeXMLOn: aWriter
	aWriter elementDeclaration
		name: self name;
		contentModel: self contentModel