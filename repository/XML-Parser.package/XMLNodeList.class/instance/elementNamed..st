accessing
elementNamed: aName
	^ self elementNamed: aName ifAbsent: [self defaultValue]