private
entityCacheAt: aUri put: anEntity
	self entityCache size >= self maxCachedEntities
		ifTrue: [self clearEntityCache].

	^ self entityCache
		at: aUri
		put: anEntity.