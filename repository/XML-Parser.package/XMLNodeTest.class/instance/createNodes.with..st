accessing
createNodes: aNumber with: aBlock
	^ ((1 to: aNumber) collect: [:i | aBlock valueWithPossibleArgument: i]) asOrderedCollection