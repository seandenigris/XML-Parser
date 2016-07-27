testing
isNonRelative: aPathString
	^ (self pathObjectFrom: aPathString) isRelative not