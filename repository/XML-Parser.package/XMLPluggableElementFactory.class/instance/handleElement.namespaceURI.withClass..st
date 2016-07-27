element handling
handleElement: anElementName namespaceURI: aURI withClass: aClass
	self elementClasses
		at:
			(aURI isEmpty
				ifTrue: [anElementName]
				ifFalse: [anElementName -> aURI])
		put: aClass