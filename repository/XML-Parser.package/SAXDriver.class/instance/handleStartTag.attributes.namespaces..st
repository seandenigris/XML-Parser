handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	| prefix localName namespaceURI |

	self wellFormednessChecker startedElement: anElementName.
	(anAttributeDictionary includesKey: 'xml:lang')
		ifTrue: [self languageEnvironment: (anAttributeDictionary at: 'xml:lang')].
	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		prefix := prefixPart.
		localName := localPart.
		namespaceURI := ''].

	self usesNamespaces ifTrue: [
		self scopeManager enterScope.
		self declareNamespaces: aNamespaceDictionary.
		namespaceURI := self scopeManager resolvePrefix: prefix.
		self
			validateStartTag: anElementName
			prefix: prefix
			attributes: anAttributeDictionary].

	self activeSaxHandler 
		startElement: anElementName
		prefix: prefix
		uri: namespaceURI
		localName: localName
		attributes: anAttributeDictionary