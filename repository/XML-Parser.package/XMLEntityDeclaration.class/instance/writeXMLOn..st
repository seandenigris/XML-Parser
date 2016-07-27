printing
writeXMLOn: aWriter
	aWriter entityDeclaration
		name: self name;
		replacement: self replacement;
		publicID: self publicID;
		systemID: self systemID;
		ndata: self ndata