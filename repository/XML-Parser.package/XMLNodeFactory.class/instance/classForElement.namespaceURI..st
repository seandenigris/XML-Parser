accessing
classForElement: aQualifiedName namespaceURI: aUri
	| prefix |

	^ self
		classForElement: aQualifiedName
		prefix: (prefix := aQualifiedName qualifiedNamePrefix)
		uri: aUri
		localName: (aQualifiedName qualifiedNameLocalPartFromPrefix: prefix)