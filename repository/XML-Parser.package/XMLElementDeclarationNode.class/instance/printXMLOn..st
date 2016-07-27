printing
printXMLOn: aWriter
	aWriter elementDeclaration
		name: self name;
		contentModel: self contentModel