namespaces
defaultNamespace: aUri
	| oldNamespace |

	oldNamespace := self defaultNamespace.
	self
		updateEnclosedScopesWith: [:scope |
			scope defaultNamespace:
				(aUri
					ifEmpty: [scope == self namespaceScope ifTrue: [''] ifFalse: [nil]]
					ifNotEmpty: [aUri])]
		whileTrue: [:scope |
			scope hasDefaultNamespace not
				or: [scope defaultNamespace = oldNamespace]]