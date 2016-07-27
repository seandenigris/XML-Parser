as yet unclassified
innerXML: aString
	| parsedDocument newNodes |

	parsedDocument := XMLDOMParser
		parseDocumentFrom: aString
		useNamespaces: self usesNamespaces.
	newNodes := parsedDocument nodes copy.
	parsedDocument removeNodes.
	self
		removeNodes;
		addNodes: newNodes.