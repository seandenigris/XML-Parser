retrieving
get: aRelativeResource relativeTo: aBaseResource
	^ self get:
		(self
			combineRelative: aRelativeResource
			withBase: aBaseResource)