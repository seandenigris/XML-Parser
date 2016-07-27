accessing
at: aKey put: aBlock
	self addKeyToSequence: aKey.
	^ super at: aKey put: aBlock.