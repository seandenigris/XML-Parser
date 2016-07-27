content
startElement: aQualifiedName prefix: aPrefix uri: aUri localName: aLocalName attributes: aDictionary
	self pushElement:
		((self nodeFactory
			classForElement: aQualifiedName
			prefix: aPrefix
			uri: aUri
			localName: aLocalName)
				qualifiedName: aQualifiedName
				prefix: aPrefix
				localName: aLocalName
				attributes: aDictionary)