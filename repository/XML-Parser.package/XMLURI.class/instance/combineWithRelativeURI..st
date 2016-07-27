private
combineWithRelativeURI: aRelativeUri
	(aRelativeUri hasHost
		or: [aRelativeUri hasPath])
		ifTrue: [
			queryString := ''.
			fragment := ''].
	aRelativeUri hasHost
		ifTrue: [
			host := aRelativeUri host.
			pathSegments removeAll].
	aRelativeUri hasPort
		ifTrue: [port := aRelativeUri port].
	aRelativeUri hasPath
		ifTrue: [self addPathSegmentsFrom: aRelativeUri].
	aRelativeUri hasQueryString
		ifTrue: [queryString := aRelativeUri queryString].
	aRelativeUri hasFragment
		ifTrue: [fragment := aRelativeUri fragment].