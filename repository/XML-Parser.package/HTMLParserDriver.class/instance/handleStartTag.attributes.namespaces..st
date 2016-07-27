handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	(self elementNester isOpenUniqueElement: anElementName)
		ifTrue: [^ self].

	self
		endElements: (self elementNester elementsToEndBeforeStarting: anElementName);
		startElements: (self elementNester elementsToStartBeforeStarting: anElementName);
		startElement: anElementName attributes: anAttributeDictionary.

	(self elementNester isVoidElement: anElementName)
		ifTrue: [self endElement: anElementName].