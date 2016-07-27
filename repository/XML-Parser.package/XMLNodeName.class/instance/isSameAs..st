testing
isSameAs: aNameString
	^ self qualified = aNameString
		or: [self prefix size > 0
			and: [self localPart = aNameString]]