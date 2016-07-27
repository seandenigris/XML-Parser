private
combineWithURI: aUri
	aUri hasHost
		ifTrue: [host := aUri host].
	aUri hasPort
		ifTrue: [port := aUri port].

	self addPathSegmentsFrom: aUri.
	queryString := aUri queryString.
	fragment := aUri fragment.