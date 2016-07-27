testing
isNamedAny: aNameArray
	^ aNameArray anySatisfy: [:each | self isNamed: each]