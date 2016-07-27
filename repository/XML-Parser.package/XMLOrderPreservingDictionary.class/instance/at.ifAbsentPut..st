accessing
at: aKey ifAbsentPut: aBlock
	self addKeyToSequence: aKey.
	^ super at: aKey ifAbsentPut: aBlock.