content
startElement: aQualifiedName prefix: aPrefix uri: aUri localName: aLocalName attributes: aDictionary
	self pushElement:
		(XMLElement
			qualifiedName: aQualifiedName
			prefix: aPrefix
			localName: aLocalName
			attributes: aDictionary
			namespaceScope: self currentScope)