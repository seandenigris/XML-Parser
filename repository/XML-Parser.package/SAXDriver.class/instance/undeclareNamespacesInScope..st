namespaces
undeclareNamespacesInScope: aScope
	| currentScope |

	currentScope := self scopeAllocator currentScope.
	aScope prefixesAndURIsDo: [:prefix :uri |
		(currentScope includesPrefix: prefix mappedTo: uri)
			ifFalse: [self saxHandler endPrefixMapping: prefix]].

	(aScope defaultNamespace ~= currentScope defaultNamespace)
		ifTrue: [self saxHandler endPrefixMapping: ''].