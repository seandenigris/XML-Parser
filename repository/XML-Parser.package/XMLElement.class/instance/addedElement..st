notifications
addedElement: anElement
	self hasNamespaces
		ifTrue: [anElement inheritMappingsFrom: self namespaceScope]