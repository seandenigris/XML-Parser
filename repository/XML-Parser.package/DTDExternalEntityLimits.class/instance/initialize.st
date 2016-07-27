initialization
initialize
	super initialize.

	maxExternalEntities := 12.
	maxExternalEntitySize := self class defaultMaxExternalEntitySize.
	resolvesLocalFromNonLocal := false.