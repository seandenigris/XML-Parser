namespaces
undeclareNamespaces
	| currentScope enclosingScope |

	currentScope := self nestedScopes currentScope.
	enclosingScope := self nestedScopes enclosingScope.

	currentScope prefixMappingsDo: [:prefix :uri |
		(enclosingScope isPrefix: prefix mappedTo: uri)
			ifFalse: [self activeSaxHandler endPrefixMapping: prefix]].

	(currentScope defaultNamespace notNil
		and: [currentScope defaultNamespace ~= enclosingScope defaultNamespace])
		ifTrue: [self activeSaxHandler endPrefixMapping: 'xmlns']