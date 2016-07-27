writing xml
startElement: anElementName attributeList: anAttributeList namespaces: aNamespaceDictionary
	self startTag: anElementName.
	self nestedScopes enterScope.

	aNamespaceDictionary keysAndValuesDo: [:name :uri |
		name splitQualifiedNameInto: [:xmlns :prefix |
			(prefix = 'xmlns')
				ifTrue: [
					(self nestedScopes defaultNamespace = uri)
						ifFalse: [self xmlns: 'xmlns' uri: uri]]
				ifFalse: [
					(self nestedScopes isPrefix: prefix mappedTo: uri)
						ifFalse: [self xmlns: prefix uri: uri]]]].

	anAttributeList printXMLOn: self.