instance creation
named: aQualifiedName namespaces: aNamespaceDictionaryOrArray attributes: aDictionaryOrArray
	^ (self
		named: aQualifiedName
		namespaces: aNamespaceDictionaryOrArray)
			setAttributes: aDictionaryOrArray