testing
isNamespace: aNamespace boundTo: aUri
	^ ((self isBoundNamespace: aNamespace)
		and: [(self resolveNamespace: aNamespace) = aUri])