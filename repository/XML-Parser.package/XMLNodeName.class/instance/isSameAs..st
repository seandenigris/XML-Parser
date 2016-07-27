testing
isSameAs: aString
	^ self qualified = aString or: [self localPart = aString]