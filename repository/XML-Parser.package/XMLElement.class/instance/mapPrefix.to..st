private
mapPrefix: aPrefix to: aUri
	| oldMapping |

	oldMapping :=
		self namespaceScope
			resolvePrefix: aPrefix
			ifUnmapped: [nil].
	self
		updateEnclosedScopesWith: [:each | each mapPrefix: aPrefix to: aUri]
		where: [:each |
			(each includesPrefix: aPrefix mappedTo: oldMapping)
				or: [(each includesPrefix: aPrefix) not]]