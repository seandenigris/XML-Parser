namespace
defaultNamespace: aNamespaceUri
	| oldDefaultNamespace |

	oldDefaultNamespace := self defaultNamespace.
	self
		updateEnclosedScopesWith: [:scope |
			scope defaultNamespace: aNamespaceUri]
		where: [:scope |
			scope defaultNamespace = oldDefaultNamespace].