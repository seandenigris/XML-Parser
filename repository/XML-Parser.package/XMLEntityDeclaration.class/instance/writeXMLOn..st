printing
writeXMLOn: aWriter
	aWriter entityDeclaration
		name: self name;
		isParameter: self isParameter;
		replacement: self replacement;
		publicID: self publicID;
		systemID: self systemID;
		ndata: self ndata