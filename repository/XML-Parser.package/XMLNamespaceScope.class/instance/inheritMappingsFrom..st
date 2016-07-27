initializing
inheritMappingsFrom: anEnclosingScope
	self defaultNamespace
		ifNil: [self defaultNamespace: anEnclosingScope defaultNamespace].

	anEnclosingScope prefixMappingsDo: [:prefix :uri |
		(self isMappedPrefix: prefix)
			ifFalse: [self mapPrefix: prefix to: uri]].