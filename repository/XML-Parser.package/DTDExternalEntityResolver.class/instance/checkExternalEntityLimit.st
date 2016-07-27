private
checkExternalEntityLimit
	(self maxExternalEntities notNil
		and: [self totalResolvedEntities + 1 > self maxExternalEntities])
		ifTrue: [XMLLimitException signal: 'External entity limit exceeded'].