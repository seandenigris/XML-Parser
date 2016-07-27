parsing
innerXML: aStringOrStream
	self removeNodes.

	(self innerXMLParserOn: aStringOrStream) parseDocument.