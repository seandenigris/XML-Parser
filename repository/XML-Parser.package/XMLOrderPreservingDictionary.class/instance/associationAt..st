accessing
associationAt: aKey
	^ self associationAt: aKey ifAbsent: [self defaultValue]