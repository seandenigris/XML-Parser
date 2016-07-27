accessing
excludingElementFor: anElementName
	^ MutuallyExcludingTags at: anElementName ifAbsent: ['']

	