accessing
implementation
	^ implementation
		ifNil: [
			(implementation := self findSupportedImplementation)
				ifNil: [self errorNoSupportedImplementation].
			implementation]