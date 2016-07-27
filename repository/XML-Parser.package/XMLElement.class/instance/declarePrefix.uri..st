namespaces
declarePrefix: aPrefix uri: aUri
	| oldMapping |

	(oldMapping := self namespaceScope prefixMappingsAt: aPrefix ifAbsent: [nil]) = aUri
		ifFalse: [
			self
				updateEnclosedScopesWith: [:scope | scope mapPrefix: aPrefix to: aUri]
				whileTrue: [:scope |
					(scope includesPrefix: aPrefix) not
						or: [scope includesPrefix: aPrefix mappedTo: oldMapping]]
				validateAfter: false]