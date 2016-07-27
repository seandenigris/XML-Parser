tests
testHash
	self assert:
		self newNamespaceScope hash =
			self newNamespaceScope hash.
	self assert:
		self newNamespaceScopeWithNamespaces hash =
			self newNamespaceScopeWithNamespaces hash.
	self assert:
		self newNamespaceScope hash =
			(self newNamespaceScopeWithNamespaces
				unmapPrefixes;
				hash).