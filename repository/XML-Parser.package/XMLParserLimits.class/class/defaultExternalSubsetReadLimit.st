accessing
defaultExternalSubsetReadLimit
	^ self defaultReadLimit
		ifNotNil: [:limit | (limit / 4) asInteger]