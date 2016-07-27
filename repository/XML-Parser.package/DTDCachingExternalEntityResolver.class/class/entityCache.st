private
entityCache
	^ entityCache ifNil: [entityCache := XMLKeyValueCache maxSize: 64]