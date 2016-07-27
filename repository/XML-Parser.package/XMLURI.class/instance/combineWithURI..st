private
combineWithURI: aUri
	aUri hasHost
		ifTrue: [host := aUri host].

	self addPathSegmentsFrom: aUri.
	queryString := aUri queryString.
	fragment := aUri fragment.