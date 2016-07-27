private
entityCacheAt: aUri ifAbsentPut: aBlock
	^ self entityCache
		at: aUri
		ifAbsentPut: aBlock