private
combineWithURI: aUri
	aUri host
		ifNotEmpty: [host := aUri host].

	self addPathSegmentsFrom: aUri.
	queryString := aUri queryString.
	fragment := aUri fragment.