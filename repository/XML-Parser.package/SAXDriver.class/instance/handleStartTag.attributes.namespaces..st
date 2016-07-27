handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	| prefix localName namespaceURI |

	self openTag: anElementName.
	(anAttributeDictionary includesKey: 'xml:lang')
		ifTrue: [self languageEnvironment: (anAttributeDictionary at: 'xml:lang')].
	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		prefix := prefixPart.
		localName := localPart].

	self usesNamespaces ifTrue: [
		self nestedScopes enterScope.
		self declareNamespaces: aNamespaceDictionary.
		namespaceURI := self nestedScopes resolvePrefix: prefix.
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