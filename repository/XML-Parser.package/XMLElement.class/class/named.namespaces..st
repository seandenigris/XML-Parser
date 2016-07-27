instance creation
named: aQualifiedName namespaces: aNamespaceDictionaryOrArray
	^ self new
		declareNamespaces: aNamespaceDictionaryOrArray;
		named: aQualifiedName