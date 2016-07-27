accessing
dummyElementClassNames
	^ self dummyElementNames collect: [:each |
		(self dummyClassPrefix,
			each,
			'Element') asSymbol]