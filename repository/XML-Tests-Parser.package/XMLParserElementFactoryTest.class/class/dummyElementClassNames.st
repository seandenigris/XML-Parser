accessing
dummyElementClassNames
	^ self dummyElementNames collect: [:each | self toDummyElementClassName: each]