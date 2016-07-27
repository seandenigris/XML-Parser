namespace
declareNamespaces: aDictionaryOrArray
	self
		from: aDictionaryOrArray 
		keysAndValuesDo: [:prefix :uri |
			prefix splitQualifiedNameInto: [:xmlns :name |
				(name = 'xmlns')
					ifTrue: [self defaultNamespace: uri]
					ifFalse: [self declareNamespace: name uri: uri]]]