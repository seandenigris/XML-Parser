assertions
assertList: aList isPartialCopyOf: aSecondList equalTo: aThirdList
	self
		assert: aList = aThirdList;
		assertList: aList isNotIdentityEqualTo: aSecondList