namespaces
declarePrefix: aPrefix uri: aUri
	| oldMapping |

	(oldMapping := self namespaceScope resolvePrefix: aPrefix ifUnmapped: [nil]) = aUri
		ifTrue: [^ self].

	self
		updateEnclosedScopesWith: [:scope | scope mapPrefix: aPrefix to: aUri]
		whileTrue: [:scope |
			(scope includesPrefix: aPrefix) not
				or: [scope includesPrefix: aPrefix mappedTo: oldMapping]].