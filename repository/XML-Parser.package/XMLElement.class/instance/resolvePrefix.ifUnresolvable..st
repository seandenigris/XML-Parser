namespacing
resolvePrefix: aPrefix ifUnresolvable: aBlock
	self hasNamespaces "avoid lazy initializing the scope"
		ifTrue: [
			^ self namespaceScope
				resolvePrefix: aPrefix
				ifUnresolvable: aBlock]
		ifFalse: [^ aBlock value]