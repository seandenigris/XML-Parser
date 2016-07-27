testing
isSameAs: aNameString
	^ self qualified = aNameString
		or: [qualified size > self localPart size "partial direct access for speed"
			and: [localPart = aNameString]]