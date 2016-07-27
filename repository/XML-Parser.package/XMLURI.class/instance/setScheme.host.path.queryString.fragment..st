initialization
setScheme: aScheme host: aHost path: aPath queryString: aQueryString fragment: aFragment
	scheme := aScheme.
	host := aHost.
	self setPathSegmentsFromString: aPath.
	queryString := aQueryString.
	fragment := aFragment.