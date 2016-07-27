accessing
classForElement: aQualifiedName namespaceURI: aUri
	| prefix |

	^ self
		classForElement: aQualifiedName
		prefix: (prefix := aQualifiedName prefixBeforeLocalName)
		uri: aUri
		localName: (aQualifiedName localNameAfterPrefix: prefix)