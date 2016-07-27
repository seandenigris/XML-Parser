namespaces
undeclareNamespaces
	| currentScope enclosingScope |

	currentScope := self scopeManager currentScope.
	currentScope hasNamespaces
		ifFalse: [^ self].
	enclosingScope := self scopeManager enclosingScope.

	currentScope prefixesAndURIsDo: [:prefix :uri |
		(enclosingScope includesPrefix: prefix mappedTo: uri)
			ifFalse: [self activeSaxHandler endPrefixMapping: prefix]].

	(currentScope defaultNamespace notNil
		and: [currentScope defaultNamespace ~= enclosingScope defaultNamespace])
		ifTrue: [self activeSaxHandler endPrefixMapping: 'xmlns']