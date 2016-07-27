assertions
assertList: aList isCopyOf: aSecondList
	self
		assert: aList = aSecondList;
		assertList: aList isNotIdentityEqualTo: aSecondList