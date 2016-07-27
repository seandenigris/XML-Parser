assertions
assertList: aList copiedFrom: aSecondList equals: aThirdList
	self
		assert: aList = aThirdList;
		assert: aList class == self listCopyClass;
		deny: aList == aSecondList;
		deny: aList collection == aSecondList collection