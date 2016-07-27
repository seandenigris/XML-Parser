accessing
before: anObject
	^ collection before: anObject ifAbsent: [self defaultValue]