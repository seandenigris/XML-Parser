namespaces
undeclareNamespaces
	| currentScope enclosingScope |

	currentScope := self scopeAllocator currentScope.
	currentScope hasNamespaces
		ifFalse: [^ self].
	enclosingScope := self scopeAllocator enclosingScope.

	currentScope prefixesAndURIsDo: [:prefix :uri |
		(enclosingScope includesPrefix: prefix mappedTo: uri)
			ifFalse: [self saxHandler endPrefixMapping: prefix]].

	(currentScope defaultNamespace notNil
		and: [currentScope defaultNamespace ~= enclosingScope defaultNamespace])
		ifTrue: [self saxHandler endPrefixMapping: '']