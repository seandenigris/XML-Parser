private
addPathSegmentsFrom: aUri
	aUri pathSegments
		ifEmpty: [^ self].

	aUri hasAbsolutePath
		ifTrue: [pathSegments removeAll]
		ifFalse: [
			pathSegments
				ifNotEmpty: [pathSegments removeLast]].

	aUri pathSegments do: [:each | self addPathSegment: each].