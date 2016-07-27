instance creation
named: aQualifiedName namespaces: aNamespaceDictionary attributes: aDictionaryOrArray
	^ (self named: aQualifiedName namespaces: aNamespaceDictionary)
		setAttributes: aDictionaryOrArray