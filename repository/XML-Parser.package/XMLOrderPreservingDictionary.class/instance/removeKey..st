accessing
removeKey: aKey
	^ self removeKey: aKey ifAbsent: [self defaultValue]