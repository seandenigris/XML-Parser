testing
isOpenUniqueElement: anElementName
	^ (UniqueElements includes: anElementName)
		and: [self hasOpenElement: anElementName]