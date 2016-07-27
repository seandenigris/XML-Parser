content
startElement: localName prefix: prefix uri: namespaceUri attributes: attributeList
	self pushElement:
		(XMLElement
			localName: localName
			prefix: prefix
			attributes: attributeList
			scope: self currentScope)