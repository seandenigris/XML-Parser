tests
testSetFromDictionary
	| outerScope innerScope namespaces |

	namespaces := self namespaces.
	(outerScope := self newNamespaceScope)
		setFromDictionary: namespaces.
	self
		assert: outerScope = self newNamespaceScopeWithNamespaces;
		deny: outerScope prefixMappings == namespaces.

	innerScope := outerScope copy.
	self
		assert: innerScope = outerScope;
		assert: innerScope prefixMappings == outerScope prefixMappings.

	innerScope setFromDictionary: namespaces.
	self
		assert: innerScope = outerScope;
		deny: innerScope prefixMappings == outerScope prefixMappings.