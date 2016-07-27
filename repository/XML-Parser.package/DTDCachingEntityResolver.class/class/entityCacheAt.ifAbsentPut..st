private
entityCacheAt: aUri ifAbsentPut: aBlock
	^ self entityCache
		at: aUri
		ifAbsent: [
			self
				entityCacheAt: aUri
				put: aBlock value]