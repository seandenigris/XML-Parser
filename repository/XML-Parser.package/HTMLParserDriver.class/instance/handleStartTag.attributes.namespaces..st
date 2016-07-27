handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	(self elementNester isOpenUniqueElement: anElementName)
		ifTrue: [^ self].

	self elementNester
		elementsToEndBeforeStarting: anElementName
		do: [:each | self endElement: each];
		elementsToStartBeforeStarting: anElementName
		do: [:each | self startElement: each].
	self startElement: anElementName attributes: anAttributeDictionary.

	(self elementNester isVoidElement: anElementName)
		ifTrue: [self endElement: anElementName].