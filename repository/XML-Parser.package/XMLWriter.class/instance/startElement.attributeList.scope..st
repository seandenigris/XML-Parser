writing xml
startElement: elementName attributeList: attributeList scope: namespaceScope
	self startTag: elementName.
	self nestedScopes enterScope.

	namespaceScope prefixMappingsDo: [:prefix :uri |
		(self nestedScopes isPrefix: prefix mappedTo: uri)
			ifFalse: [self xmlns: prefix uri: uri]].

	(namespaceScope defaultNamespace ~= self nestedScopes defaultNamespace)
		ifTrue: [self xmlns: nil uri: namespaceScope defaultNamespace].

	attributeList printXMLOn: self.