private
addPathSegmentsFrom: aResource
	aResource pathSegments
		ifEmpty: [^ self].

	aResource hasAbsolutePath
		ifTrue: [pathSegments removeAll]
		ifFalse: [
			pathSegments
				ifNotEmpty: [pathSegments removeLast]].

	pathSegments addAll: aResource pathSegments.