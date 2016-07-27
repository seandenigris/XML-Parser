accessing
handle: aSelector with: aBlock
	self handlerCallbacks
		at: aSelector
		put: aBlock