private
writeNamespaceDeclarationsOn: aTagWriter
	self namespaceScope prefixesAndURIsDo: [:prefix :uri |
		((self declaresPrefix: prefix uri: uri)
			or: [aTagWriter isEmbedded not])
			ifTrue: [
				aTagWriter
					xmlnsAt: prefix
					put: uri]]