accessing
toDummyElementClassName: aName
	^ (self dummyElementClassPrefix,
		aName,
		self dummyElementClassSuffix) asSymbol