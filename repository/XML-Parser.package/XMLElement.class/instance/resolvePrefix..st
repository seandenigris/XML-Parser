namespacing
resolvePrefix: aPrefix
	self hasNamespaces "avoid lazy initializing the scope"
		ifTrue: [^ self namespaceScope resolvePrefix: aPrefix]
		ifFalse: [^ '']