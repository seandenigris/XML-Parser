private
addPathSegment: aString
	aString = '.'
		ifTrue: [^ self addDotPathSegment].
	aString = '..'
		ifTrue: [^ self addDoubleDotPathSegment].

	self hasPath
		ifTrue: [
			(self hasDirectoryPath
				and: [self pathSegments size > 1])
				ifTrue: [self removeLastPathSegment]]
		ifFalse: [
			self hasHost
				ifTrue: [self pathSegments addLast: '']].

	self pathSegments addLast: aString.