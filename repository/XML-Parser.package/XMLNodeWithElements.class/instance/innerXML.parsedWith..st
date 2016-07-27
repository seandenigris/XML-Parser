parsing
innerXML: aStringOrStream parsedWith: aParser
	self removeNodes.

	aParser
		pushInnerXMLRootNode: self;
		parseDocument.