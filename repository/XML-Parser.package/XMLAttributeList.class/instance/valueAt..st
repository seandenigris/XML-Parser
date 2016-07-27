accessing
valueAt: aName
	^ self valueAt: aName ifAbsent: [self defaultValue]