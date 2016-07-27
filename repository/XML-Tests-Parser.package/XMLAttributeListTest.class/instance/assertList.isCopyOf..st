assertions
assertList: aList isCopyOf: aSecondList
	super assertList: aList isCopyOf: aSecondList.
	self
		assert: aList attributesByName size = aList size;
		assert: aList attributesByName = aSecondList attributesByName;
		deny: aList attributesByName == aSecondList attributesByName.