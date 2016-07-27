assertions
assertList: aList copiedFrom: aSecondList equals: aThirdList
	super
		assertList: aList
		copiedFrom: aSecondList
		equals: aThirdList.
	self
		assert: aList attributesByName size = aList size;
		assert: aList attributesByName = aThirdList attributesByName;
		deny: aList attributesByName == aSecondList attributesByName.