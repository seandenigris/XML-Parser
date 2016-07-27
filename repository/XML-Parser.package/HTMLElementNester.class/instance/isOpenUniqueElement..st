testing
isOpenUniqueElement: anElementName
	^ (#('html' 'head' 'body') includes: anElementName)
		and: [self hasOpenElement: anElementName]