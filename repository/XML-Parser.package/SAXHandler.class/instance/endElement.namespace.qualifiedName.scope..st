content
endElement: elementName namespace: namespace qualifiedName: qualifiedName scope: namespaceScope
	self
		endElement: elementName
		namespace: namespace
		namespaceURI: (namespaceScope resolveNamespace: namespace)
		qualifiedName: qualifiedName