initializing
inheritMappingsFrom: anEnclosingScope
	anEnclosingScope hasNamespaces
		ifTrue: [
			anEnclosingScope prefixesAndURIsDo: [:prefix :uri |
				(self includesPrefix: prefix)
					ifFalse: [self mapPrefix: prefix to: uri]]]