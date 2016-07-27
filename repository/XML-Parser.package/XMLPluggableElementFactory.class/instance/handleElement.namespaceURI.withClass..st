element handling
handleElement: anElementName namespaceURI: aUri withClass: aClass
	(self elementClassesByName
		at: anElementName
		ifAbsentPut: [Dictionary new])
			at: aUri put: aClass