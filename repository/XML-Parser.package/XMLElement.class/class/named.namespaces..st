instance creation
named: aQualifiedName namespaces: aNamespaceDictionary
	^ self new
		declareNamespaces: aNamespaceDictionary;
		qualifiedName: aQualifiedName