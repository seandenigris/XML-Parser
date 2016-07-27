private
addPathSegment: aSegment
	(aSegment = '.' or: [aSegment = '..'])
		ifTrue: [
			(aSegment = '..' and: [pathSegments notEmpty])
				ifTrue: [pathSegments removeLast].
			^ self].

	(aSegment notEmpty
		and: [pathSegments isEmpty
			and: [self hasHost]])
		ifTrue: [pathSegments addFirst: ''].

	pathSegments addLast: aSegment.