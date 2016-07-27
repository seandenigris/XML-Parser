handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	self startNestingOfElement: anElementName.

	(anAttributeDictionary includesKey: 'xml:lang')
		ifTrue: [self languageEnvironment: (anAttributeDictionary at: 'xml:lang')].

	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		self
			validateStartTag: anElementName
			prefix: prefixPart
			attributes: anAttributeDictionary
			namespaces: aNamespaceDictionary.

		self saxHandler 
			startElement: anElementName
			prefix: prefixPart
			uri:
				(self usesNamespaces
					ifTrue: [self scopeAllocator resolvePrefix: prefixPart]
					ifFalse: [''])
			localName: localPart
			attributes: anAttributeDictionary].