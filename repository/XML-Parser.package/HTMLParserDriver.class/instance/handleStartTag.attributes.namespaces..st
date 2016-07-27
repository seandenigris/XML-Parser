handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	(self elementNester isOpenUniqueElement: anElementName)
		ifTrue: [^ self].

	self elementNester
		beforeStarting: anElementName
		elementsToEndDo: [:each | self endElement: each]
		elementsToStartDo: [:each | self startElement: each].
	self startElement: anElementName attributes: anAttributeDictionary.

	(self elementNester isVoidElement: anElementName)
		ifTrue: [self endElement: anElementName].