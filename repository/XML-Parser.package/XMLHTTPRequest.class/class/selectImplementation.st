private
selectImplementation
	self preferredImplementation isSupported
		ifTrue: [^ self preferredImplementation].
	self allSubclassesDo: [:each |
		each isSupported
			ifTrue: [^ each]].
	XMLHTTPException signal: 'HTTP unsupported'.