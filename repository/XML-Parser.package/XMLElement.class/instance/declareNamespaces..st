namespaces
declareNamespaces: aDictionaryOrArray
	self
		from: aDictionaryOrArray 
		keysAndValuesDo: [:namespaceName :uri |
			namespaceName splitQualifiedNameInto: [:xmlns :prefix |
				(prefix = 'xmlns')
					ifTrue: [self defaultNamespace: uri]
					ifFalse: [self declareNamespace: prefix uri: uri]]]