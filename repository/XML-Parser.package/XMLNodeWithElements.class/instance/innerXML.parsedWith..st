parsing
innerXML: aStringOrStream parsedWith: aParser
	self removeNodes.

	aParser
		pushNode: self;
		parseDocument.