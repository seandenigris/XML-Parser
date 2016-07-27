copying
postCopy
	super postCopy.

	totalResolvedEntities := 0.
	externalEntityLimits
		ifNotNil: [externalEntityLimits := externalEntityLimits copy].