accessing
after: anObject
	^ collection after: anObject ifAbsent: [self defaultValue]