initialization
fromString: aString
	| parser  |

	parser := XMLURIParser on: aString.

	scheme := parser parseScheme.
	host := parser parseHostAfterScheme: scheme.
	port := parser parsePort.
	self setPathSegmentsFromString: parser parsePath.
	queryString := parser parseQueryString.
	fragment := parser parseFragment.