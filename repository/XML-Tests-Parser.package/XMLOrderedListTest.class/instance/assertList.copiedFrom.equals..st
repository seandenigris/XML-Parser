assertions
assertList: aList copiedFrom: aSecondList equals: aThirdList
	self
		assert: aList = aThirdList;
		deny: aList == aSecondList;
		deny: aList collection == aSecondList collection