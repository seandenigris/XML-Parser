printing
writeXMLOn: aWriter
	aWriter doctype
		root: self root;
		publicID: self publicID;
		systemID: self systemID;
		withInternalSubset: [self writeInnerXMLWith: aWriter]