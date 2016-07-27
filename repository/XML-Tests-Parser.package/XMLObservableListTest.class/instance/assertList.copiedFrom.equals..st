assertions
assertList: aList copiedFrom: aSecondList equals: aThirdList
	super
		assertList: aList
		copiedFrom: aSecondList
		equals: aThirdList.
	self denyList: aList sharesObserverWith: aSecondList.