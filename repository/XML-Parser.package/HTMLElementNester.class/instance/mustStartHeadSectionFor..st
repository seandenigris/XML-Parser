testing
mustStartHeadSectionFor: anElementName
	^ (self isHeadSectionOnlyElement: anElementName)
		and: [(self hasOpenElement: 'head') not]