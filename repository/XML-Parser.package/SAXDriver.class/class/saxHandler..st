instance creation
saxHandler: aHandler
	^ self new
		setSaxHandler: aHandler
		configuration: aHandler configuration
		elementNester: aHandler elementNester
		scopeAllocator: aHandler scopeAllocator