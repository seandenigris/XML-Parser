testing
hasExternalSubsetToParse
	self resolvesExternalEntities
		ifFalse: [^ false].

	(self externalSubsetPublicID notEmpty
		or: [self externalSubsetSystemID notEmpty])
		ifFalse: [^ false].
	
	^ self isValidating
		or: [self isStandalone not].