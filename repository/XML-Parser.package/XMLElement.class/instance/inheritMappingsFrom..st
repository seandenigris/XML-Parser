private
inheritMappingsFrom: aScope
	self recurse: [:each | each namespaceScope inheritMappingsFrom: aScope]