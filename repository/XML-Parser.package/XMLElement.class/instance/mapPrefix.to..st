private
mapPrefix: aPrefix to: aUri
	| oldMapping |

	oldMapping := self scope resolvePrefix: aPrefix ifUnmapped: [nil].
	self
		updateEnclosedScopesWith: [:each | each mapPrefix: aPrefix to: aUri]
		where: [:each |
			(each isPrefix: aPrefix mappedTo: oldMapping)
				or: [(each isMappedPrefix: aPrefix) not]]