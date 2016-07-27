content
startElement: localName namespace: namespace attributeList: attributeList scope: namespaceScope
	self
		startElement: localName
		namespace: namespace
		namespaceURI: (namespaceScope resolveNamespace: namespace)
		attributeList: attributeList