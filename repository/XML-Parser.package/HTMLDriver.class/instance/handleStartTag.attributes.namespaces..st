handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	self elementNester hasOpenSelfClosingTag
		ifTrue: [self handleEndTag: self elementNester currentElement].

	(self elementNester elementsToEndBeforeStarting: anElementName)
		do: [:each | self handleEndTag: each].

	super handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary