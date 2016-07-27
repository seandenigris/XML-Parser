testing
isSkippableException: anError
	^ self class isSkipping
		and: [self skippableExceptions handles: anError]