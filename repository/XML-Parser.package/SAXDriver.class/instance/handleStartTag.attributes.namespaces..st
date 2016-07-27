handling tokens
handleStartTag: elementName attributes: attributes namespaces: namespaces
	| localName prefix namespaceURI |

	(attributes includesKey: 'xml:lang')
		ifTrue: [self languageEnvironment: (attributes at: 'xml:lang')].

	elementName splitQualifiedNameInto: [:ns :ln |
		prefix := ns.
		localName := ln].
	self usesNamespaces
		ifTrue: [
			self nestedScopes enterScope.
			self declareNamespaces: namespaces.
			namespaceURI := self nestedScopes resolvePrefix: prefix.

			self validateStartTag: localName prefix: prefix attributes: attributes]
		ifFalse: [namespaceURI := nil].

	self activeSaxHandler 
		startElement: localName
		qualifiedName: elementName
		prefix: prefix
		uri: namespaceURI
		attributes: attributes