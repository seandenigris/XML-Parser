initialization
initialize
	super initialize.

	externalSubsetReadLimit := self class defaultExternalSubsetReadLimit.
	maxExternalEntities := 16.
	maxExternalEntitySize := self class defaultMaxExternalEntitySize.
	resolvesLocalFromNonLocal := false.