initialization
setSaxHandler: aHandler
	saxHandler := aHandler.
	elementNester := aHandler elementNester.
	scopeAllocator := aHandler scopeAllocator.