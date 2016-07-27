notifications
addedElement: anElement
	super addedElement: anElement.
	self hasNamespaces
		ifTrue: [anElement inheritMappingsFrom: self namespaceScope]