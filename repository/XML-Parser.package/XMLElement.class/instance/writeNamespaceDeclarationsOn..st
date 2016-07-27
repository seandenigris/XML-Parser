printing
writeNamespaceDeclarationsOn: aTagWriter
	(self declaresDefaultNamespace
		or: [self defaultNamespace notEmpty
			and: [aTagWriter isEmbedded not]])
		ifTrue: [aTagWriter xmlns: self defaultNamespace].

	self namespaceScope prefixesAndURIsDo: [:prefix :uri |
		((self declaresPrefix: prefix uri: uri) or: [aTagWriter isEmbedded not])
			ifTrue: [aTagWriter xmlnsAt: prefix put: uri]]