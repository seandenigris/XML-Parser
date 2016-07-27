private
setPathSegmentsFromString: aString
	pathSegments := OrderedCollection new.

	aString ifNotEmpty: [
		$/
			xmlParserSplit: aString
			do: [:segment | pathSegments addLast: segment]].