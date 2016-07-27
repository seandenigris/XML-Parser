initialization
initialize
	super initialize.

	maxExternalEntities := 16.
	maxExternalEntitySize := self class defaultMaxExternalEntitySize.
	resolvesLocalFromNonLocal := false.