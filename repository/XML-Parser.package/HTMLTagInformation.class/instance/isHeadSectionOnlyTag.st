testing
isHeadSectionOnlyTag
	^ self isHeadSectionTag and: [self isBodySectionTag not]