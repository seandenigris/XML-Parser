namespaces
declareNamespaces: aDictionaryOrArray
	aDictionaryOrArray associationsDo: [:each |
		each key isEmptyOrNil
			ifTrue: [self defaultNamespace: each value]
			ifFalse: [self declarePrefix: each key uri: each value]]