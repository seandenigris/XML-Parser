handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	super
		handleStartTag: anElementName
		attributes: anAttributeDictionary
		namespaces: aNamespaceDictionary.

	(self elementNester isVoidElement: anElementName)
		ifTrue: [self preEndElements: (Array with: anElementName)].