tests
test4stringNodes
	| node raw escaped |

	node := XMLString new.
	raw := self markupString.
	escaped := self escapedString.
	self
		assertNode: node hasTypes: #(isStringNode isContentNode);
		assertStringNode: node hasString: '' printString: '';
		assertStringNode: (node string: raw) hasString: raw printString: escaped;
		assertStringNode: (node addContent: raw) hasString: raw, raw printString: escaped, escaped.
	self
		assertStringNode: (node addContent: (XMLString string: raw))
		hasString: raw, raw, raw
		printString: escaped, escaped, escaped.

	self
		assertStringNode: (XMLString string: raw)
		hasString: raw
		printString: escaped.
	self
		assertStringNode: (XMLString string: (XMLString string: raw))
		hasString: raw
		printString: escaped.

	self
		assertStringNode: raw asXMLString hasString: raw printString: escaped;
		assert: node asXMLString == node.