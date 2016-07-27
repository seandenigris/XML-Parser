testing
isNamedAny: aStringArray
	^ aStringArray anySatisfy: [:each | self isNamed: each]