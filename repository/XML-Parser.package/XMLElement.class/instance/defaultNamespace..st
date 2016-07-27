namespaces
defaultNamespace: aUri
	| oldNamespace |

	oldNamespace := self defaultNamespace.
	self
		updateEnclosedScopesWith: [:scope | scope defaultNamespace: aUri]
		whileTrue: [:scope | scope defaultNamespace = oldNamespace]
		validateAfter: false.