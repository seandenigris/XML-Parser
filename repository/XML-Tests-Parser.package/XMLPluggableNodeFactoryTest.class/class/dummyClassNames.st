accessing
dummyClassNames
	^ self nodeClasses collect: [:each |
		(self dummyClassPrefix,
			(each name asString allButFirst: 3)) asSymbol]