initialization
setQualifiedName: aQualifiedName prefix: aPrefix localName: aLocalName attributes: anAttributeDictionary namespaceScope: aNamespaceScope
	self nodeName
		setQualified: aQualifiedName
		prefix: aPrefix
		localPart: aLocalName.

	anAttributeDictionary
		ifNotEmpty: [
			"By not observing 'attributes' until after it is filled, we avoid
			re-validating the attributes, which the parser should have already done"
			(attributes := XMLAttributeList new: anAttributeDictionary size)
				setFromDictionary: anAttributeDictionary andElement: self;
				addObserver: self].

	namespaceScope := aNamespaceScope.