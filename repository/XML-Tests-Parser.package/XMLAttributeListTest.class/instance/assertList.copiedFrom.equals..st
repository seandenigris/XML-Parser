assertions
assertList: aList copiedFrom: aSecondList equals: aThirdList
	super
		assertList: aList
		copiedFrom: aSecondList
		equals: aThirdList.
	self
		assert: aList attributeNodesByName size = aList size;
		assert: aList attributeNodesByName = aThirdList attributeNodesByName;
		deny: aList attributeNodesByName == aSecondList attributeNodesByName.