accessing
maxCachedEntities
	^ maxCachedEntities ifNil: [maxCachedEntities := 64]