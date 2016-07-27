initializing
inheritMappingsFrom: anEnclosingScope
	anEnclosingScope hasNamespaces
		ifFalse: [^ self].

	(anEnclosingScope defaultNamespace notEmpty and: [self hasDefaultNamespace not])
		ifTrue: [self defaultNamespace: anEnclosingScope defaultNamespace].

	anEnclosingScope hasPrefixMappings
		ifTrue: [
			anEnclosingScope prefixesAndURIsDo: [:prefix :uri |
				(self includesPrefix: prefix)
					ifFalse: [self mapPrefix: prefix to: uri]]].