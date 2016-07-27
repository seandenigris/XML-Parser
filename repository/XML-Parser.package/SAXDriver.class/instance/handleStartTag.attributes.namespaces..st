handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	| prefix localName namespaceUri |

	self elementNester startedElement: anElementName.
	(anAttributeDictionary includesKey: 'xml:lang')
		ifTrue: [self languageEnvironment: (anAttributeDictionary at: 'xml:lang')].
	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		prefix := prefixPart.
		localName := localPart].

	self
		validateStartTag: anElementName
		prefix: prefix
		attributes: anAttributeDictionary
		namespaces: aNamespaceDictionary.
	namespaceUri :=
		self usesNamespaces
			ifTrue: [self scopeAllocator resolvePrefix: prefix]
			ifFalse: [''].

	self saxHandler 
		startElement: anElementName
		prefix: prefix
		uri: namespaceUri
		localName: localName
		attributes: anAttributeDictionary