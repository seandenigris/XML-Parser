tests
test003stringNode
	| node raw escaped |

	node := XMLString new.
	raw := self markupString.
	escaped := self escapedString.
	self
		assert: node isStringNode & node isContentNode;
		assertStringNode: node equals: '' withPrintString: '';
		assertStringNode: (node string: raw) equals: raw withPrintString: escaped;
		assertStringNode: (node addContent: raw) equals: raw, raw withPrintString: escaped, escaped.
	self
		assertStringNode: (node addContent: (XMLString string: raw))
		equals: raw, raw, raw
		withPrintString: escaped, escaped, escaped.

	self assertStringNode: (XMLString string: raw) equals: raw withPrintString: escaped.
	self
		assertStringNode: (XMLString string: (XMLString string: raw))
		equals: raw
		withPrintString: escaped.

	self assertStringNode: raw asXMLString equals: raw withPrintString: escaped.