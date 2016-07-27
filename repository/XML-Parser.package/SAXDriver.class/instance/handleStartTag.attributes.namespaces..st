handling tokens
handleStartTag: anElementName attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	| localName prefix namespaceURI |

	self openTag: anElementName.

	(anAttributeDictionary includesKey: 'xml:lang')
		ifTrue: [self languageEnvironment: (anAttributeDictionary at: 'xml:lang')].

	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		prefix := prefixPart.
		localName := localPart].
	self usesNamespaces
		ifTrue: [
			self nestedScopes enterScope.
			self declareNamespaces: aNamespaceDictionary.
			namespaceURI := self nestedScopes resolvePrefix: prefix.
			self
				validateStartTag: anElementName
				prefix: prefix
				attributes: anAttributeDictionary]
		ifFalse: [namespaceURI := nil].

	self activeSaxHandler 
		startElement: localName
		qualifiedName: anElementName
		prefix: prefix
		uri: namespaceURI
		attributes: anAttributeDictionary.