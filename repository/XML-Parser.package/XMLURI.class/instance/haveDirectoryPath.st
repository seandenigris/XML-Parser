private
haveDirectoryPath
	self hasPath
		ifFalse: [self pathSegments addLast: ''].
	self pathSegments addLast: ''.