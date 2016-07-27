private
addPathSegmentsFrom: aUri
	aUri hasPath
		ifFalse: [^ self].

	aUri hasAbsolutePath
		ifTrue: [pathSegments removeAll]
		ifFalse: [
			self hasNonDirectoryPath
				ifTrue: [
					pathSegments removeLast.
					self hasPath
						ifTrue: [self haveDirectoryPath]]].

	aUri pathSegments do: [:each | self addPathSegment: each].