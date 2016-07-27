tests
test030stringNode
	| node raw escaped |

	node := XMLString new.
	raw := self markupString.
	escaped := self escapedString.
	self
		assert: node isText & node isTagOrText;
		assertString: node is: '' printed: '';
		assertString: (node string: raw) is: raw printed: escaped;
		assertString: (node addContent: raw) is: raw, raw printed: escaped, escaped.
	self
		assertString: (node addContent: (XMLString string: raw))
		is: raw, raw, raw
		printed: escaped, escaped, escaped.

	self assertString: (XMLString string: raw) is: raw printed: escaped.
	self
		assertString: (XMLString string: (XMLString string: raw))
		is: raw
		printed: escaped.