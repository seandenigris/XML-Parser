testing
isSkippableTest: aSelector
	^ self class isSkipping
		and: [self skippableTests includes: aSelector]