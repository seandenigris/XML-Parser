testing
isBodySectionOnlyTag
	^ self isBodySectionTag and: [self isHeadSectionTag not]