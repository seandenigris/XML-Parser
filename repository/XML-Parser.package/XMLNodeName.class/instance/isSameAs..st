testing
isSameAs: aNameString
	^ aNameString
		isQualifiedName: self qualified
		orLocalName: self localPart