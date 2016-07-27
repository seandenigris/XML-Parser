namespace
declareNamespaces: aDictionaryOrArray
	(aDictionaryOrArray isDictionary
		ifTrue: [aDictionaryOrArray associations]
		ifFalse: [aDictionaryOrArray])
			do: [:association |
				association key splitQualifiedNameInto: [:xmlns :name |
					(name = 'xmlns')
						ifTrue: [self defaultNamespace: association value]
						ifFalse: [self declareNamespace: name uri: association value]]]