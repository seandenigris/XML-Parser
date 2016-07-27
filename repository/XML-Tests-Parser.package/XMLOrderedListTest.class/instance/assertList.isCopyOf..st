assertions
assertList: aList isCopyOf: aSecondList
	self
		assert: aList = aSecondList;
		assert: aList class == self listCopyClass;
		deny: aList == aSecondList;
		deny: aList collection == aSecondList collection