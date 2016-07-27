accessing
keyAtIdentityValue: aValue
	^ self keyAtIdentityValue: aValue ifAbsent: [self defaultValue]