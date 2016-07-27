resolving
resolveEntity: aUri
	^ (self entityCache
		at: aUri
		ifAbsentPut: [(super resolveEntity: aUri) contents]) readStream