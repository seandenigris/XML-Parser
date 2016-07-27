private
entityCacheAt: aUri put: anEntity
	^ self entityCache
		at: aUri
		put: anEntity.