accessing
defaultReadLimit
	^ defaultReadLimit ifNil: [defaultReadLimit := 10000000]