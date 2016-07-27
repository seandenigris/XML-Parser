comparing
= anObject
	^ self == anObject
		or: [self class == anObject class
			and: [self defaultNamespace = anObject defaultNamespace
				and: [self prefixMappings = anObject prefixMappings]]]