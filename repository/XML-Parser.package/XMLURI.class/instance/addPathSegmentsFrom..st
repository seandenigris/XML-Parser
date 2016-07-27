private
addPathSegmentsFrom: aURI
	aURI hasPath
		ifFalse: [^ self].

	aURI hasAbsolutePath
		ifTrue: [self removePathSegments]
		ifFalse: [
			self hasNonDirectoryPath
				ifTrue: [
					self removeLastPathSegment.
					self hasPath
						ifTrue: [self haveDirectoryPath]]].

	aURI pathSegments do: [:each | self addPathSegment: each].