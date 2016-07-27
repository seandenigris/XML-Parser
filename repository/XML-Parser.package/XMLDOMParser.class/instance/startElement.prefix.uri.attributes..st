content
startElement: localName prefix: prefix uri: namespaceUri attributes: attributes
	self pushElement:
		(XMLElement
			localName: localName
			prefix: prefix
			attributes: attributes
			scope: self currentScope)