content
startElement: localName namespace: namespace attributeList: attributeList scope: namespaceScope
	self pushElement:
		(XMLElement
			named: localName
			namespace: namespace
			attributes: attributeList
			scope: namespaceScope)