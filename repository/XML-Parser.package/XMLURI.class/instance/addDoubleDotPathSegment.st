private
addDoubleDotPathSegment
	self hasPath
		ifFalse: [^ self].

	self hasRootPath
		ifTrue: [self removePathSegments]
		ifFalse: [| hadAbsolutePath |
			hadAbsolutePath := self hasAbsolutePath.
			self hasDirectoryPath
				ifTrue: [self removeLastPathSegment].
			self hasPath
				ifTrue: [
					self removeLastPathSegment.
					(self hasPath
						or: [hadAbsolutePath])
						ifTrue: [self haveDirectoryPath]]].