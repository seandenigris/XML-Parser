instance creation
parseWithNamespaces: aStream
	^ self parseDocumentFrom: aStream useNamespaces: true