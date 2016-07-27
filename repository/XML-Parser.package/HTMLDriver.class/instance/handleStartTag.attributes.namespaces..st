handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	(self elementNester isOpenUniqueElement: anElementName)
		ifTrue: [^ self].

	self preEndElements:
		(self elementNester elementsToEndBeforeStarting: anElementName).
	self preStartElements:
		(self elementNester elementsToStartBeforeStarting: anElementName).

	super
		handleStartTag: anElementName
		attributes: anAttributeDictionary
		namespaces: aNamespaceDictionary.

	(self elementNester isVoidElement: anElementName)
		ifTrue: [self preEndElements: (Array with: anElementName)].
