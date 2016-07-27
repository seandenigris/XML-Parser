accessing
keyAtValue: aValue
	^ self keyAtValue: aValue ifAbsent: [self defaultValue]