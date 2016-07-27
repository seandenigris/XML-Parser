testing
isSameAs: aNameString
	^ self qualified = aNameString or: [self localPart = aNameString]