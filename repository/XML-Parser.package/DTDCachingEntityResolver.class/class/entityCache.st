private
entityCache
	^ entityCache ifNil: [entityCache := Dictionary new: self maxCachedEntities]