namespacing
defaultNamespace: aURI
	| oldNamespace |

	oldNamespace := self defaultNamespace.
	self
		updateEnclosedScopesWith: [:scope | scope defaultNamespace: aURI]
		whileTrue: [:scope | scope defaultNamespace = oldNamespace]
		validateAfter: false.