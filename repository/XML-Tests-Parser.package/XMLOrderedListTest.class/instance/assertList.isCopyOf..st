assertions
assertList: aList isCopyOf: aSecondList
	self
		assert: aList = aSecondList;
		assert: aList class = aSecondList class;
		deny: aList == aSecondList;
		deny: aList collection == aSecondList collection