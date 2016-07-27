initialization
fromString: aString
	| parser  |

	parser := XMLURIParser on: aString.
	self
		setScheme: parser parseScheme
		host: parser parseHost
		path: parser parsePath
		queryString: parser parseQueryString
		fragment: parser parseFragment.