tests
testMapPrefixesAndURIs
	| outerScope innerScope namespaces |

	namespaces := self namespaces.
	(outerScope := self newNamespaceScope)
		mapPrefixesAndURIs: namespaces.
	self
		assert: outerScope = self newNamespaceScopeWithNamespaces;
		deny: outerScope prefixMappings == namespaces.

	innerScope := outerScope copy.
	self
		assert: innerScope = outerScope;
		assert: innerScope prefixMappings == outerScope prefixMappings.

	innerScope mapPrefixesAndURIs: namespaces.
	self
		assert: innerScope = outerScope;
		deny: innerScope prefixMappings == outerScope prefixMappings.