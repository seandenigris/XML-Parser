namespace
defaultNamespace: aNamespaceUri
	| oldDefaultNamespace |

	oldDefaultNamespace := self defaultNamespace.
	self
		updateEnclosedScopesWith: [:each |
			each defaultNamespace: aNamespaceUri]
		where: [:each |
			each defaultNamespace = oldDefaultNamespace].