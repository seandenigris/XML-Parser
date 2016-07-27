tests
testSetPrefixMappingsFrom
	| outerScope innerScope |

	(outerScope := self newNamespaceScope)
		setPrefixMappingsFrom: self namespaces.
	self assert: outerScope = self newNamespaceScopeWithNamespaces.

	innerScope := outerScope copy.
	self assert: innerScope prefixMappings == outerScope prefixMappings.

	innerScope setPrefixMappingsFrom: self namespaces.
	self
		assert: innerScope prefixMappings = outerScope prefixMappings;
		deny: innerScope prefixMappings == outerScope prefixMappings.