private
findSupportedImplementation
	self preferredImplementation isSupportedImplementation
		ifTrue: [^ self preferredImplementation].

	self isSupportedImplementation
		ifTrue: [^ self].
	self allSubclassesDo: [:each |
		each isSupportedImplementation
			ifTrue: [^ each]].

	^ nil.