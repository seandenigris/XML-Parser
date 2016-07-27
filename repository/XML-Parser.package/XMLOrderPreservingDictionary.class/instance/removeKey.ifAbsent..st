accessing
removeKey: aKey ifAbsent: aBlock
	self removeKeyFromSequence: aKey.
	^ super removeKey: aKey ifAbsent: aBlock.