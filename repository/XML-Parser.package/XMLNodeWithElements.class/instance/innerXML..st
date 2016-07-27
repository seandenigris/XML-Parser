parsing
innerXML: aString
	| parsedDocument newNodes |

	parsedDocument := XMLDOMParser
		parse: aString
		usingNamespaces: self usesNamespaces.
	newNodes := parsedDocument nodes copy.
	parsedDocument removeNodes.
	self
		removeNodes;
		addNodes: newNodes.