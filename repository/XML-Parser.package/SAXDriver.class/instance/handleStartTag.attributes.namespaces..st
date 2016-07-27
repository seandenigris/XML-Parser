handling tokens
handleStartTag: elementName attributes: attributes namespaces: namespaces
	| localName prefix namespaceURI |

	(attributes includesKey: #xml:lang)
		ifTrue: [self languageEnvironment: (attributes at: #xml:lang)].
	self usesNamespaces
		ifTrue: [
			self nestedScopes enterScope.
			self declareNamespaces: namespaces.
			elementName splitQualifiedNameInto: [:ns :ln |
				prefix := ns.
				localName := ln.
				namespaceURI := self nestedScopes resolvePrefix: prefix].
			self validateStartTag: localName prefix: prefix attributes: attributes]
		ifFalse: [localName := elementName].

	self activeSaxHandler 
		startElement: localName
		qualifiedName: elementName
		prefix: prefix
		uri: namespaceURI
		attributes: attributes