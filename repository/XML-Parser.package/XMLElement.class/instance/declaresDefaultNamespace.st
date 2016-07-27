namespaces
declaresDefaultNamespace
	"Did the receiver declare a new default namespace rather than inheriting one?"

	^ self namespaceScope hasDefaultNamespace
		and: [self defaultNamespace isEmpty
			or: [self isRoot
				or: [self defaultNamespace ~= self parent defaultNamespace]]]