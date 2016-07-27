assertions
assertList: aList isCopyOf: aSecondList
	super assertList: aList isCopyOf: aSecondList.
	self
		assert: aList attributeNodesByName size = aList size;
		assert: aList attributeNodesByName = aSecondList attributeNodesByName;
		deny: aList attributeNodesByName == aSecondList attributeNodesByName.