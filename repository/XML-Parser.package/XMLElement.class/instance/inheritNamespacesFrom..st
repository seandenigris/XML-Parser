private
inheritNamespacesFrom: anElement
	self traverseWith: [:each |
		each namespaceScope inheritMappingsFrom: anElement namespaceScope]