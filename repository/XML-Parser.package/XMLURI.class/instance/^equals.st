comparing
= anObject
	self == anObject
		ifTrue: [^ true].
	self class == anObject class
		ifFalse: [^ false].

	^ scheme = anObject scheme
		and: [host = anObject host
			and: [pathSegments = anObject pathSegments
				and: [queryString = anObject queryString
					and: [fragment = anObject fragment]]]].