printing
printXMLOn: aWriter
	aWriter doctype
		root: self root;
		publicID: self publicID;
		systemID: self systemID;
		withInternalSubset: [super printXMLOn: aWriter]