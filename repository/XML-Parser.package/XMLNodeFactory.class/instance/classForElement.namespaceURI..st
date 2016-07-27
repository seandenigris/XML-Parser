accessing
classForElement: aQualifiedName namespaceURI: aURI
	| prefix |

	^ self
		classForElement: aQualifiedName
		prefix: (prefix := aQualifiedName xmlPrefixBeforeLocalName)
		uri: aURI
		localName: (aQualifiedName xmlLocalNameAfterPrefix: prefix)