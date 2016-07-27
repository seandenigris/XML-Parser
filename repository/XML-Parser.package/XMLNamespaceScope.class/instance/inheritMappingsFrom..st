initializing
inheritMappingsFrom: anEnclosingScope
	anEnclosingScope hasNamespaces
		ifFalse: [^ self].

	(anEnclosingScope hasDefaultNamespace and: [self hasDefaultNamespace not])
		ifFalse: [self defaultNamespace: anEnclosingScope defaultNamespace].
	anEnclosingScope hasPrefixMappings
		ifTrue: [
			anEnclosingScope prefixesAndURIsDo: [:prefix :uri |
				(self includesPrefix: prefix)
					ifFalse: [self mapPrefix: prefix to: uri]]].