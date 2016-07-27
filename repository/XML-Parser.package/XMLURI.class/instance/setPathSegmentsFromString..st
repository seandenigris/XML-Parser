private
setPathSegmentsFromString: aString
	pathSegments := OrderedCollection new.

	aString ifNotEmpty: [
		$/
			xmlSplit: aString
			do: [:segment | pathSegments addLast: segment]].