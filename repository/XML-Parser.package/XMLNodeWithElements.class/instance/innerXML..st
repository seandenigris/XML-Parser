parsing
innerXML: aStringOrStream
	self removeNodes.

	(XMLDOMParser on: aStringOrStream withRootNode: self)
		configuration: self configuration;
		currentScope: self namespaceScope;
		parseDocument.