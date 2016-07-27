private
bindNamespace: aPrefix to: aUri
	| oldBinding |

	oldBinding := self namespaceScope
		resolveNamespace: aPrefix
		ifUnbound: [nil].
	self
		updateEnclosedScopesWith: [:scope |
			scope bindNamespace: aPrefix to: aUri]
		where: [:scope |
			(scope resolveNamespace: aPrefix ifUnbound: [nil]) = oldBinding]